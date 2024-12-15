/* global Prism */

(function (Prism) {

  let classMembers = [
    'Property',
    'Parameter',
    'Relationship',
    'Method',
    'ClassMethod',
    'ClientMethod',
    'Trigger',
    'XData',
  ]
  let keywords = new RegExp(`(Class|${classMembers.join("|")})`);

  Prism.languages['objectscript-class'] = {
    keyword: keywords,
  }

  Prism.languages['objectscriptclass'] = Prism.languages['objectscript-class'];

}(Prism))