/// Exposes some properties and methods associated with
/// a locale. If no locale is given to %New(), then the
/// current one is used.<br><br>
///
/// For system and process NLS table settings see <class>%SYS.NLS.Table</class>.<br>
/// For current device NLS properties see <class>%SYS.NLS.Device</class>.<br>
/// For date, time and number format properties see <class>%SYS.NLS.Format</class>.<br>
Class %SYS.NLS.Locale Extends %RegisteredObject [ System = 4 ]
{

/// List of available Accent tables.
Property AccentTables As %String;

/// Name of character set on which the current locale is based.
Property CharacterSet As %String;

/// List of available collation tables.
Property CollationTables As %String;

/// Country supported by the current locale.
Property Country As %String;

/// ISO 3166-1 alpha-2 two-letter abbreviation of Country.
Property CountryAbbr As %String;

/// Currency symbol.
Property Currency As %String;

/// Short description of the current locale.
Property Description As %String;

/// List of available identifier tables.
Property IdentifierTables As %String;

/// Localization language for the current locale.
Property Language As %String;

/// ISO 639-1 two-letter abbreviation of Language.<br><br>
/// In a few cases, where the language is used by more than one country,
/// this abbreviation is hyphenated with the uppercase abbreviation of
/// the country. For example, en-US, en-GB, pt-BR.
Property LanguageAbbr As %String;

/// List of available lower-case tables.
Property LowerCaseTables As %String;

/// Code name of the current locale.
Property Name As %String;

/// List of available pattern match tables.
Property PatternTables As %String;

/// List of available title-case tables.
Property TitleCaseTables As %String;

/// List of available upper-case tables.
Property UpperCaseTables As %String;

/// List of available translation (i/o) tables
Property XLTTables As %String;

/// List of available $X/$Y tables.
Property XYTables As %String;

Method %OnNew(sloc As %String = "") As %Status [ Internal ]
{
}

/// Returns the language associated with a locale as<br>
/// $LB({Property LanguageAbbr},{Property Language})<br><br>
/// Parameters:<ul>
///   <li>Loc - Locale code (optional)</li></ul>
/// If the locale code is not given, use the current locale.<br>
ClassMethod GetLanguage(Loc As %String = "") As %List
{
}

}
