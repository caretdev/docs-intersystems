/// Meta-data object that represents an additional expression variable within the fact table for a DeepSee cube.<br/>
/// No facts are generated for an expression; this is simply a way to define a reusable subexpression when building
/// a cube.
Class %DeepSee.Model.expression Extends (%DeepSee.Model.node, %DeepSee.Model.source) [ System = 3 ]
{

/// Cube that this expression belongs to.
Relationship cube As %DeepSee.Model.cube(XMLPROJECTION = "none") [ Cardinality = one, Inverse = expressions ];

/// Test if this index's definition is valid.
Method %Validate() As %Status
{
}

}
