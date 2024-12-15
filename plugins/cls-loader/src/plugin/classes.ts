import { readdir, readFile, writeFile, mkdir } from "fs/promises";
import * as path from "path";
import { ClassReflection } from "../types";

import { HtmlValidate } from "html-validate";

enum ClassMemberType {
  Class,
  Method,
  ClassMethod,
  ClientMethod,
  Property,
  Relationship,
  Trigger,
  Query,
  XData,
}

type ClassMemberParameters = { [key: string]: any };

interface ClassMemberDefinition {
  type: ClassMemberType;
  name: string;
  code: string;
  description: string[];
  parameters: ClassMemberParameters;
}

interface ClassDefinition {
  Class: ClassMemberDefinition;
  Method: ClassMemberDefinition[];
  Parameter: ClassMemberDefinition[];
  Property: ClassMemberDefinition[];
  XData: ClassMemberDefinition[];
  Query: ClassMemberDefinition[];
  Trigger: ClassMemberDefinition[];
}

class Parser {
  private code: string[];
  private classMembers = [
    "Property",
    "Parameter",
    "Relationship",
    "Method",
    "ClassMethod",
    "ClientMethod",
    "Trigger",
    "XData",
  ];
  private classMembersAlias = {
    ClassMethod: "Method",
    ClientMethod: "Method",
    Relationship: "Property",
  };
  private classMembersMatch = new RegExp(
    `^(Class|${this.classMembers.join("|")}) (%*[^( ]+).*`
  );
  private memberParametersMatch = /\[([^\]]*)\]/;
  private memberParametersSplitMatch =
    /(?:,\s)|\w+\s=\s{[^}]+}|[^ ]+\s=\s\([^)]+\)|[^ ]+\s=\s"[^"]+\"|[^ ]+\s=\s[^\s,]+|(Not\s)?\w+/g;

  constructor(code) {
    this.code = code;
  }

  getParameters(line: string): ClassMemberParameters {
    const parameters = {};
    let parametersMatched = line.match(this.memberParametersMatch);
    if (!parametersMatched) {
      return parameters;
    }
    let parametersList = parametersMatched[1]
      .trim()
      .matchAll(this.memberParametersSplitMatch);
    if (parametersList) {
      [...parametersList]
        .map((el) => el[0])
        .filter((el) => el !== ", ")
        .forEach((param) => {
          let name, value;
          if (param.includes(" = ")) {
            [name, value] = param.split(" = ");
          } else if (param.split(" ")[0] === "Not") {
            name = param.split(" ")[1];
            value = false;
          } else {
            name = param;
            value = true;
          }
          if (["ServerOnly", "ProcedureBlock"].includes(name)) {
            value = value === "1";
          }
          parameters[name] = value;
        });
    }
    return parameters;
  }

  parseMethod(line: string) {
    return {};
  }

  parseClass(line: string) {
    return {};
  }

  parseMember(
    memberType,
    memberName,
    description,
    line
  ): ClassMemberDefinition {
    const memberTypeAlias = this.classMembersAlias[memberType] || memberType;
    let parameters = {};
    try {
      parameters = this.getParameters(line);
    } catch (ex) {
      console.error(ex);
    }
    const parseMemberType =
      `parse${memberTypeAlias}` in this
        ? this[`parse${memberTypeAlias}`]
        : this[`parse${memberType}`];
    if (parseMemberType) {
      // console.log({memberType, memberName, parameters})
    }
    return {
      type: memberType,
      name: memberName,
      parameters,
      description,
      code: line,
    };
  }

  parse(): ClassDefinition {
    const classDefinition: ClassDefinition = {
      Class: undefined,
      Method: [],
      Parameter: [],
      Property: [],
      XData: [],
      Query: [],
      Trigger: [],
    };

    this.classMembers.forEach((memberType) => {
      if (!this.classMembersAlias[memberType]) {
        classDefinition[memberType] = {};
      }
    });
    let description = [];
    this.code.forEach((line: string) => {
      if (!line.length) {
        return;
      }
      if (line.substring(0, 3) === "///") {
        description.push(line.substring(4));
        return;
      }
      if (line[0].match(/[{}]/)) {
        return;
      }
      const matchesClassMember = line.match(this.classMembersMatch);
      if (matchesClassMember) {
        const [, memberType, memberName] = matchesClassMember;
        const item = this.parseMember(
          memberType,
          memberName,
          description,
          line
        );
        if (memberType === "Class") {
          classDefinition.Class = item;
        } else {
          classDefinition[this.classMembersAlias[memberType] || memberType][
            memberName
          ] = item;
        }
      } else {
        console.error("NOT FOUND", line);
      }
      description = [];
    });
    return classDefinition;
  }
}

const asCode = (code) => "```objectscript-class\n" + code + "\n```";

export function parseClassFile(classContent): ClassDefinition {
  const classLines = classContent.replaceAll("\r", "").split("\n");
  const parser = new Parser(classLines);
  const classDefinition = parser.parse();

  return classDefinition;
}

//  fix some known issues with HTML
function reshapeHTML(text) {
  if (Array.isArray(text)) {
    text = text.join(" ");
  }
  text = text.replaceAll(/<[^>]*>/gi, "");
  text = text.replaceAll(/\[/gi, "[");
  return text;
  text = text.replaceAll(/\]/gi, "]");
  text = text.replaceAll(/\<br\s*\/?\>/gi, "\n\n");
  text = text.replaceAll(/\<\/?p\>/gi, "\n\n");
  text = text.replaceAll(/\<\/?pre\>/gi, "\n```\n");
  text = text.replaceAll(/\<\/?var\>/gi, "`");
  text = text.replaceAll(/\<\/?ul\>/gi, "");
  text = text.replaceAll(/\<li\>/gi, "\n* ");
  text = text.replaceAll(/\<\/li\>/gi, "`");
  text = text.replaceAll(/\<\/?code\>/gi, "`");
  text = text.replaceAll(/\<\/Description>/gi, "");
  text = text.replaceAll(/\<example[^\>]*>/gi, "\n```\n");
  text = text.replaceAll(/\<\/example>/gi, "\n```\n");
  for (const match of text.matchAll(/<class>([^<]*)<\/class>/gi)) {
    const [found, className] = match;
    let classNameFull = className;
    if (className[0] == "%" && !className.includes(".")) {
      classNameFull = "%Library." + className.substring(1);
    }
    const classLink = `[${className}](${classNameFull.replace("%", "_")}.cls)`;
    text = text.replace(found, classLink);
  }
  for (const match of text.matchAll(/<method>([^<]*)<\/method>/gi)) {
    const [found, methodName] = match;
    const classLink = `[${methodName}](#${methodName})`;
    text = text.replace(found, classLink);
  }

  let result = `${text}\n\n`;
  const htmlValidate = new HtmlValidate();
  let report = htmlValidate.validateStringSync(text);
  if (!report.valid) {
    result = `
  :::danger
  Error while rendering HTML
  :::
      `;
  }

  return result;
}

function membersToMarkdown(
  classFile: string,
  title: string,
  members: ClassMemberDefinition[]
) {
  const entries = Object.entries(members);
  if (!entries.length) {
    return "";
  }
  let doc = `## ${title}\n\n`;
  entries.forEach(([key, member]) => {
    doc += `### ${member.name}\n\n`;
    doc += `${asCode(member.code)}\n\n`;
    let description = member.description.join(" ");
    // description = reshapeHTML(member.description);
    // doc += description;
    // doc += "\n\n";
  });

  return doc;
}

export async function generateDoc(classFile, noCode: boolean = true) {
  const classContent = (await readFile(classFile)).toString();
  const classDef: ClassDefinition = parseClassFile(classContent);

  if (!classDef?.Class) {
    console.error("oops", classFile, classDef);
    return "";
  }
  const originalCode = `
<details>
<summary>Original code</summary>
${asCode(classContent)}
</details>
`;
  let documentation = `
# ${classDef.Class.name}

${asCode(classDef.Class.code)}

${noCode ? "" : originalCode}
`;
  return documentation;
  documentation += membersToMarkdown(
    classFile,
    "Parameters",
    classDef.Parameter
  );
  documentation += membersToMarkdown(
    classFile,
    "Properties",
    classDef.Property
  );
  documentation += membersToMarkdown(classFile, "Queries", classDef.Query);
  documentation += membersToMarkdown(classFile, "Triggers", classDef.Trigger);
  documentation += membersToMarkdown(classFile, "XDatas", classDef.XData);
  documentation += membersToMarkdown(classFile, "Methods", classDef.Method);
  return documentation;
}

export async function generateDocFile(classFile, folder, mdFile) {
  await mkdir(folder, { recursive: true });
  const mdFileFull = path.join(folder, mdFile);
  await writeFile(mdFileFull, await generateDoc(classFile, false));
  return mdFileFull;
}

export async function generateClassDocs(actions, folder, classes) {
  classes.forEach(async (item) => {
    if (item.isPackage) {
      generateClassDocs(actions, `${folder}/${item.name}`, item.items);
    } else {
      item.fileContent = await generateDocFile(
        item.fullPath,
        folder,
        `${item.name.split(".")[0]}.md`
      );
    }
  });
}

export const getClassesFromFolder = async (
  dir,
  urlPrefix,
  generatedFilesDir,
  namePrefix?
) =>
  Promise.all(
    (await readdir(dir, { withFileTypes: true })).map(
      async (item): Promise<ClassReflection> => {
        let fullName, id, link;
        const fullPath = path.join(dir, item.name);
        const classItem = {
          name: item.name,
          isPackage: item.isDirectory(),
          fullPath,
          id: undefined,
          fullName: undefined,
          link: undefined,
          // fileContent: undefined,
        };
        if (classItem.isPackage) {
          id = `${namePrefix || ""}${item.name}`;
          fullName = `${namePrefix || ""}${item.name}.`;
          link = `${urlPrefix}${item.name}.pkg`;
          classItem["items"] = await getClassesFromFolder(
            path.join(dir, item.name),
            `${urlPrefix}${item.name.replace("%", "_")}.`,
            generatedFilesDir,
            fullName
          );
        } else {
          id = `${namePrefix || ""}${item.name.split(".")[0]}`;
          fullName = `${namePrefix || ""}${item.name}`;
          classItem.fullPath = fullPath;
          link = `${urlPrefix}${item.name}`;
          // classItem.fileContent = await generateDoc(generatedFilesDir, id, fullPath);
        }
        classItem.link = link;
        classItem.id = id;
        classItem.fullName = fullName;
        return classItem;
      }
    )
  );
