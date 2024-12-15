/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Populate">Using the Populate Utility</a>.</p>
/// <CLASS>%Populate</CLASS> is a utility class that provides the ability to
/// create instances of an object populated with random data.
///
/// <p>To use the <CLASS>%Populate</CLASS> class do the following:
/// <ol>
/// <li>Create a persistent object class, such as <b>Employee</b>.</li>
/// <li>Add <CLASS>%Populate</CLASS> to the end of the class' superclass list:<br>
/// <example>super = %Persistent,%Populate</example></li>
/// <li>Save and compile the class.</li>
/// <li><CLASS>%Populate</CLASS> will add a class method, <b>Populate()</b>, to your class.</li>
/// </ol>
/// Run this method to create instances of your class in the database:<br>
/// <example>Do ##class(Employee).Populate(100)</example>
Class %Library.Populate [ Abstract, Not ProcedureBlock, PropertyClass = %Compiler.Type.Populate, System = 2 ]
{

/// The <i>POPSPEC</i> parameter provides a way to control how
/// <CLASS>%Populate</CLASS> generates data for properties.
///
/// <p><b>For details</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Populate">Using the Populate Utility</a>.</p>
Parameter POPSPEC;

/// Creates up to <var>count</var> instances an object and stores
/// them in the database.
///
/// <p>If <var>verbose</var> is true, then details are echoed to the console.
/// <p>If <var>DeferIndices</var> is true, then indices are sorted at the end of the operation.
/// <p>If <var>objects</var> is true, then each object that is created is returned in the objects array
/// <p>If <var>tune</var> is true, then $SYSTEM.SQL.TuneTable is called after the instances of the class have been created.
/// If tune>1, then $SYSTEM.SQL.TuneTable is also called for any tables projected by persistent superclasses of this class
/// <p>If <var>deterministic</var> is true, then the set of objects produced by identical calls to Populate at different times will be identical.
///
/// <P>Returns the number of instances successfully created.
///
/// <p><b>For details</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Populate">Using the Populate Utility</a>.</p>
ClassMethod Populate(count As %Integer = 10, verbose As %Integer = 0, DeferIndices As %Integer = 1, ByRef objects As %Integer = 0, tune As %Integer = 1, deterministic As %Integer = 0) As %Integer [ CodeMode = generator, GenerateAfter = OnPopulate ]
{
}

/// Given a class, return a '~' delimited list of the class's super extents
ClassMethod GetSuperExtents(pClass) As %String [ Internal, ServerOnly = 1 ]
{
}

/// Create a single instance of a serial object.
ClassMethod PopulateSerial() As %String [ CodeMode = generator, GenerateAfter = OnPopulate ]
{
}

Method OnPopulate() As %Status [ Abstract, ServerOnly = 1 ]
{
}

/// Return a random number from 0-<var>n</var> using a seeded RNG. Identical to $$$PRand
ClassMethod Random(n As %Integer) As %Integer [ Internal, ProcedureBlock = 1 ]
{
}

}
