Class %Compiler.COS.Refactor Extends %Compiler.COS.Traveler [ System = 4 ]
{

Property className As %String;

Property propName As %String;

Property methName As %String;

Property type As %String;

Property lhs As %String;

Property lnum As %Integer;

Property pair As %ObjectHandle;

Property changed As %Boolean;

Property scname As %String;

Property tcname As %String;

Property cmname As %Binary;

Property smname As %String;

Property tmname As %String;

Property ssqlname As %String;

Property tsqlname As %String;

Property sqlTableNameList As %String;

Property ctind As %Integer;

Method oneClassold() As %Status
{
}

Method oneClass(ByRef tempName As %String, bsave As %Boolean = 1, ByRef storagechanged As %Boolean, bNewSlot As %Boolean = 0, bDeleteStorage As %Boolean = 0) As %Status
{
}

Method rf(ByRef source As %RawString, pPackage As %RawString = "", ByRef code As %RawString, ByRef warning As %Status = 1, sqlContext As %Integer = 0) As %Status
{
}

///  LvnRef(9): ann name Name:1, ann enum LvnType:2, optional child Subscripts:1
///  LOCAL/GLOBAL VARIABLES
///  enum LvnType: Private:1, Public:2, Parameter:3
Method v9(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v10(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v2(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v1(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v62(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v5(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method replaceMemberName(parseTree As %Compiler.Util.ParseTree, newname As %Binary, nodePtr As %Integer)
{
}

Method replaceClassName(parseTree As %Compiler.Util.ParseTree, newname As %Binary, nodePtr As %Integer, parentPtr As %Integer, ann As %String)
{
}

Method v35(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v97(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v36(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v41(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v13(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v14(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v37(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v34(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v33(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v11(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v38(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v12(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

Method v32(parseTree As %Compiler.Util.ParseTree, visit As %Integer, nodePtr As %Integer, parentPtr As %Integer)
{
}

ClassMethod ChangeMultClassNameExecute(ByRef qHandle As %Binary, oldName As %String, newName As %String, projectName As %String) As %Status
{
}

ClassMethod ChangeMultClassNameClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ChangeMultClassNameExecute ]
{
}

ClassMethod ChangeMultClassNameFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ChangeMultClassNameExecute ]
{
}

ClassMethod GetSubclasses(classname As %String) As %Binary
{
}

ClassMethod GetTableList(classnamelist As %Binary) As %Binary
{
}

ClassMethod ChangeMultMemberNameExecute(ByRef qHandle As %Binary, oldName As %String, newName As %String, memclassName As %String, projectName As %String, sqlName As %String = "") As %Status
{
}

ClassMethod ChangeMultMemberNameClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ChangeMultClassNameExecute ]
{
}

ClassMethod ChangeMultMemberNameFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ChangeMultClassNameExecute ]
{
}

ClassMethod NormalizeClName(clname As %String, context As %String) As %String
{
}

ClassMethod ChangeCSList(ByRef cslist As %String, oldName As %String, newName As %String, bNormalize As %Boolean, context As %String = "") As %Boolean
{
}

/// The method <b>ChangeClName </b> is used for changing a class name.
/// Arguments: oldName - existing class name,
///            newName - new class name,
///            className - class to be processed,
///            tempName - name of generated clas,s
///            storagechanged - indicate whether storage was modified.
/// In order to replace encounters of the class A to the class B in the class C, the call should be ChangeClName(A, B, C, .tempName, .storagechanged)
/// As a result of this call a new class (with a name returned in tempName) will be created (but not compiled).
ClassMethod ChangeClName(oldName As %String, newName As %String, className As %String, ByRef tempName As %String, ByRef storagechanged As %Boolean, bDeleteStorage As %Boolean = 0) As %Status
{
}

ClassMethod ChangeClassNameExecute(ByRef qHandle As %Binary, oldName As %String, newName As %String, className As %String, ByRef tempName As %String, ByRef storagechanged As %Boolean) As %Status
{
}

ClassMethod ChangeClassNameClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ChangeClassNameExecute ]
{
}

ClassMethod ChangeClassNameFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ChangeClassNameExecute ]
{
}

/// The method <b>ChangeMemName </b> is used for changing a member name (either a property or a method).
/// Arguments: oldName - existing member name,
///            newName - new member name,
///            memclassName -  the class name of a property that is being changed,
///            className - class to be processed,
///            tempName - name of generated clas,s
///            storagechanged - indicate whether storage was modified.
/// In order to replace encounters of the member Z.A to  Z.B in the class C, the call should be ChangeMemName(A, B, Z, C, .tempName, .storagechanged)
/// As a result of this call a new class (with a name returned in tempName) will be created (but not compiled).
ClassMethod ChangeMemName(oldName As %String, newName As %String, memclassName As %String, className As %String, ByRef tempName As %String, ByRef storagechanged As %Boolean, sqlName = "", bNewSlot As %Boolean = 0) As %Status
{
}

ClassMethod ChangeMemberNameExecute(ByRef qHandle As %Binary, oldName As %String, newName As %String, memclassName As %String, className As %String, ByRef tempName As %String, ByRef storagechanged As %Boolean, sqlName As %String = "") As %Status
{
}

ClassMethod ChangeMemberNameClose(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod ChangeMemberNameFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod GetMemberOrigin(memberName As %String, className As %String) As %String
{
}

///  RefactorStorageProperty takes a classname, property name, and a new property name and changes the name of the property to the new name everywhere in the storage definition.
///  The pNewSlot argument means if pNewSlot=1, don't overwrite the current property storage data location, but provide a new data slot with the new name.
///  The pChanged argument is passed by reference and will be set to 1 if any change is made to any Storage defined for this class.  It will be 0 if no changes are made.
///  Returns %Status value
ClassMethod RefactorStorageProperty(pClassname As %String, pPropName As %String, pNewName As %String, pNewSlot As %Boolean = 0, ByRef pChanged As %Boolean, pSave As %Boolean = 1) As %String [ PublicList = (%ROWCOUNT, %ROWID, SQLCODE, %msg, pPropName, tStorageId, pClassname, tDSDId, tDataAttribute, tDataValueName, tPropDefName, tDVDId, tSPDId) ]
{
}

///  In the SQL text array (by ref) .sql(1:sql)=line, find all occurrences, if
///  any, of field ffn from the table specified by sch=$LB(schema) and
///  tab=$LB(table), and replace them with nuf in the result array (by ref)
///  .nuq(1:nuq)=line , returns %Status
ClassMethod RenameSqlField(ByRef sql As %String, ByRef nuq As %String, ffn As %String, nuf As %String, sch As %String, tab As %String) As %Library.Status [ PublicList = mtc ]
{
}

///  In the SQL text array (by ref) .sql(1:sql)=line, find all occurrences, if
///  any, of field ffn from the tables specified by lbst=$LB(schema.table), and
///  replace them with nuf in the result array (by ref) .nuq(1:nuq)=line ,
///  pChanged=0/1 (by ref) indicates whether anything changed, return %Status.
///  pClassname is the class name the sql statement came from, if any, and its
///  package name is used as the packages argument to comp^%qaqqt
ClassMethod RenameSqlFieldLbst(ByRef sql As %String, ByRef nuq As %String, ffn As %String, nuf As %String, lbst As %String, ByRef pChanged As %Boolean, pClassname As %String = "") As %Library.Status [ PublicList = (backgrnd, err, mcurs, mtag, mtc, SQLCODE) ]
{
}

///  In the SQL text array (by ref) .sql(1:sql)=line, find all occurrences,
///  if any, of [schema.]table sntn=schema.table, and replace them with the
///  new schema.table nust in the result array (by ref) .nuq(1:nuq)=line ,
///  pChanged=0/1 (by ref) indicates whether anything changed, return %Status.
///  pClassname is the class name the sql statement came from, if any, and its
///  package name is used as the packages argument to comp^%qaqqt
ClassMethod RenameSqlTable(ByRef sql As %String, ByRef nuq As %String, sntn As %String, nust As %String, ByRef pChanged As %Boolean, pClassname As %String = "") As %Library.Status [ PublicList = (backgrnd, err, mcurs, mtag, mtc, SQLCODE) ]
{
}

}
