/// This class is a place to create File Creation & Formatting methods used by
/// the PTools Application Package, which was designed to gather performance
/// statistics for any type of Routine, Code Block or SQL Statement.
///
/// The following methods are written to be used within Class Definitions, and the
/// equivalent methods within the %SYS.PTools.FileCreation.INC file are written to be
/// used within MAC Routines and are written as pure COS methods.
///
/// The file formatted that these methods support are driven by the 'format'
/// parameter and support the following formats:
///
///   format - The output format of the Export/Reporting file
///            This parameter has the following structure of constituent elements:
///               format=<data-format>[:$LB(<delim>,<csv-header>,<csv-footer>)]
///            Where the constituent elements have the following values:
///               <data-format> - The format of the Export/Reporting file:
///                  - P = Printable/Viewable report file (.txt file, no pagination)
///                  - D = Comma-delimited data file (.csv file) which can be read into a spreadsheet
///                  - X = Microsoft Excel XML markup file suitable for import into Excel (.xml file)
///                  - H = HTML page file (.html file)
///                  - Z = User-defined delimiter "P" formatted file (.dlm file)
///                         NOTE: The <delim> element is required or defaulted to $C(9) (TAB)
///            Optional Elements:
///               <delim> - User-defined delimiter  [DEFAULT: $C(9) (TAB)]
///                          NOTE: This is generally used for <data-format>="Z"
///               <csv-header> - .csv file header for <data-format>="D":
///                  - 0 = Don't add non-standard information header to file  [DEFAULT]
///                  - 1 = Add non-standard information header to file
///               <csv-footer> - .csv file footer for <data-format>="D":
///                  - 0 = Don't add non-standard information footer to file  [DEFAULT]
///                  - 1 = Add non-standard information footer to file
///
///            EXAMPLES:
///               Valid 'format' values:
///                  - "H"             // HTML file
///                  - "D"             // CSV file with No information header or footer
///                  - "D:"_$LB(,1,1)  // CSV file with information header & footer
///                  - "Z:"_$LB("^")   // User-defined delimiter file (delim="^")
///
/// This class is Super-Class, and is used as part of the EXTENDS directive for the
/// following classes:
///    - %SYS.PTools.SQLQuery
///    - %SYS.PTools.Stats
///         - %SYS.PTools.StatsSQL
///         - %SYS.PTools.SQLStats
///
Class %SYS.PTools.FileCreation [ Abstract, System = 4 ]
{

/// Create a valid SQL <order-by-list>
ClassMethod createOrderByList(orderBy = "", d) As %String
{
}

/// Check Conditional Matches
ClassMethod condsMatch(conds, d, condValExp = "") As %Status [ PublicList = (conds, condValExp, d) ]
{
}

/// Create & Open File
ClassMethod createAndOpenFile(file, timeout = {$$$PTSOpenTimeout}) As %Status
{
}

/// Open File For Read
ClassMethod openFileForRead(file, timeout = {$$$PTSOpenTimeout}) As %Status
{
}

/// Get the 'outputFile'
ClassMethod getOutputFile(file = "", className = "", methodName = "", format = "", hDate = "", tSC = {$$$OK}) As %String
{
}

/// File Header
ClassMethod fileHeader(file, format, title = "", class, method, version, metadata, bcFlag = "") As %Status
{
}

/// File Body
ClassMethod fileBody(file, format, metadata)
{
}

/// File Footer
ClassMethod fileFooter(file, format, footerMsg, metadata, elapseTime, rowCnt) As %Status
{
}

/// Text Table Header
ClassMethod TXTtabHead(metadata, delim)
{
}

/// Text Table Data Row
ClassMethod TXTtabRow(metadata, delim)
{
}

/// CSV Table Header
ClassMethod CSVtabHead(metadata, delim)
{
}

/// CSV Table Data Row
ClassMethod CSVtabRow(metadata, delim)
{
}

/// DLM Table Header
ClassMethod DLMtabHead(metadata, delim)
{
}

/// DLM Table Data Row
ClassMethod DLMtabRow(metadata, delim)
{
}

/// XML Worksheet Element
ClassMethod XMLsheet(name)
{
}

/// XML Table Element
ClassMethod XMLtable(colCnt = 0, rowCnt = 0)
{
}

/// XML Header Row Element
ClassMethod XMLrowHeader(metadata)
{
}

/// XML Table Data Row Element
ClassMethod XMLtabRow(metadata)
{
}

/// XML Column Width Element
ClassMethod XMLcolWidth(width)
{
}

/// XML Column AutoFit Width Element
ClassMethod XMLcolAuto()
{
}

/// XML Sorting Element
ClassMethod XMLsort(sortColList, sortOrderList)
{
}

/// HTML Table Header
ClassMethod HTMLtabHead(aTag, title, metadata)
{
}

/// HTML Table Row
ClassMethod HTMLtabRow(metadata)
{
}

}
