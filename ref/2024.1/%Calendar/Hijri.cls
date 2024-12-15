/// A %Calendar.Hijri object contains a sequence of monthly lunar observations
/// that can be installed into an InterSystems IRIS process so that the $ZDATE[TIME][H](x,20,...)
/// and $ZDATE[TIME][H](x,21,...) functions use those observations when
/// computing Hijri dates.
/// <p>
/// Evaluating ##class(%Calendar.Hijri).%New(Name,Year,DateH,Months)
/// produces a new Hijri Observation Calendar object with the
/// the calendar name specified by the argument Name.  The argument
/// Year is the Hijri year number for the year containing the first 12 lunar
/// observations.  The argument DateH contains a ObjectScript $HOROLOG date
/// value specifying the first day of the first Hijri year containing
/// observational data.  The String Months contains the observations starting
/// from the first month of Hijri year Year.  If the length of Months string
/// argument is not a multiple 12 then extra observations will be added to fill
/// out to the end of the last year.  These extra months will attempt to
/// bring the last day of the Observed calendar years closer to the
/// Tabular calendar.  These supplied months can be changed in the future
/// after the actual observations are available.
/// A character in the string Months must be "0" if there is a lunar
/// observation which ends the corresponding month on the 29th day.
/// The character in the string Months must be "1" if there is no
/// lunar observation on the 29th day of the month and that month instead
/// has 30 days.  No characters other than "0" and "1" are permitted in
/// the Months string.
/// <p>
/// Note the description of the Delta property which keeps track of the difference
/// between the Observational Calendar and the Tabular Calendar.  When a %Calendar.Hijri
/// is created (by the %New method) or is modified (by the AddObservation method),
/// there is a restriction that the the difference between the Observed Calendar dates
/// and the corresponding Tabular Calendar dates cannot be greater than 5 days apart.  Such a
/// difference between the Observed Calendar and the Tabular Calendar indicates
/// an error in the observational data that is trying to become part of the %Calendar.Hijri
/// object.  An attempt to have a difference that is more than 5 days earlier or more
/// than 5 days later means the new object will not be created or that an existing
/// object will not be modified.
/// <p>
/// Users of the %Calendar.Hijri Class are encouraged to suggest
/// improvements to InterSystems that could be added to this Class
///
Class %Calendar.Hijri Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// Parameter #MaxYear specifies the maximum number of Hijri years
/// containing observations that can be loaded into an InterSystems IRIS process.
Parameter MaxYear = 2000;

/// Parameter #EarlyDate is smallest (most negative) DateH value than
/// can be passed to ##class(%Calendar.Hijri).%New(Name,Year,DateH,Months)
/// when creating a new %Calendar.Hijri object.  It is 5 days earlier
/// than AH date 1 1 0001 in the Tabular Hijri calendar.  Note that the
/// Tabular calendar will not handle DateH values earlier than -445031.
///
Parameter EarlyDate = -445036;

/// Property CalendarName contains the unique name of the
/// %Calendar.Hijri object.  The CalendarName in the ID key used
/// to locate a particular %Calendar.Hijri object by evaluating
/// ##class(%Calendar.Hijri).OpenId(CalendarName)
Property CalendarName As %String [ ReadOnly, Required ];

/// Property BeginYear is the AH year containing the first observation
Property BeginYear As %Integer [ ReadOnly, Required ];

/// Property BeginDateH is the $HOROLOG format date corresponding
/// to first day of the first year containing lunar observations.
Property BeginDateH As %Date [ ReadOnly, Required ];

/// Property Months is a string of "1"s and "0"s where each
/// character specifies the
/// lunar observation for the corresponding month.  The length
/// of the string Months is (EndYear - BeginYear) * 12.
/// <p>
/// The character "0" indicates a 29 day month; the character "1"
/// indicates a 30 day month.
///
Property Months As %String [ ReadOnly, Required ];

/// Property EndYear is the AH year following the year with
/// the last string of observations.
Property EndYear As %Integer [ ReadOnly, Transient ];

/// Delta is a string of characters indicating the difference
/// between the Observed calendar and the Tabular calendar on
/// the first day of every year.  The character "F" indicates a delta
/// of 0; the characters "A"..."E" indicate deltas of -5..-1;
/// and the characters "G"..."K" indicates deltas of +1..+5.
/// The length of the string Delta is EndYear - BeginYear + 1.
/// The first character of Delta indicates the difference between
/// $ZDATE("1 1 "_..BeginYear,21)-$ZDATE("1 1 "_.BeginYear,19)
/// I.e., the difference between the Calendar with lunar observations
/// and the Tabular Calendar on the first year containing
/// observations.  On first day of each year, the delta
/// between Observed Calendar minus the Tabluar Calendar must be in
/// the range -5 .. +5.  The last character of the string Delta
/// indicates the difference between the Observed Calendar minus the
/// Tabular Calendar on the first day of year ..EndYear.
///
Property Delta As %String [ ReadOnly, Transient ];

Method %OnNew(Name As %String, Year As %Integer, DateH As %Date, Months As %String) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

Method %OnOpen() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// The IsLeap(Year) Class Method returns 1 if Year is a Tabular
/// Leap Year; otherwise it returns 0.
ClassMethod IsLeap(Year As %Integer) As %Boolean
{
}

/// The Method InstallCalendar installs the Observed Calendar
/// contained in the %Calendar.Hijri object into the process
/// for use by the $ZDATE[TIME][H](x,mode,...) functions, where
/// mode is one of 20 or 21.
///
Method InstallCalendar() As %Status
{
}

/// The RemoveCalendar() Class Method removes any lunar observations
/// installed in the process so the $ZDATE[TIME][H] functions
/// using date formats 20 and 21 default
/// to using the Tabular Hijri Calendar instead of using lunar
/// Observations to control the Hijri Calendar.
ClassMethod RemoveCalendar()
{
}

/// The method AddObservation will modify a lunar observation in the last year
/// of the %Calendar.Hijri object.  If necessary, an additional year of observations will
/// be added to the object when the observation is in the year following the
/// last year of observations.  The additional year will be constructed to sync the
/// Observed Calendar with the Tabular Calendar before adding the new Observation.
/// <p>
/// If the new Observation is being made to a month before Month 12 then AddNewObservation
/// method will attempt to modify an observation in a month following the new Observation
/// so that the Observed - Tabular difference at the end of the year is not changed.
/// <p>
/// You must have installed all the observations for the months of the last year before
/// you use AddObservation to add an observations for a new, additional ending year.  After
/// a new year is added to the table of observations, the only way to modify any preceding
/// year to to call ##class(%Calendar.Hijri).%New(Name,Year,DateH,Months) to in create a new object
/// containing the modified observations.  (Hint:  If you want to keep the same name as an
/// existing object then you must delete the existing object before creating a new object
/// with the same name.)
/// <p>
/// Note: AddObservation just modifies the in-process copy of the Calendar.  You must use
/// the %Save method to save the modification back to your namespace.  Also, AddObservation
/// does not "install" your change into the process.  You must use the InstallCalendar
/// method to have the $ZDATE[TIME][H](x,20,...) or $ZDATE[TIME][H](x,21,...) functions
/// start using the new observation.
///
Method AddObservation(Month As %Integer, Year As %Integer, Observation As %Integer) As %Status
{
}

}
