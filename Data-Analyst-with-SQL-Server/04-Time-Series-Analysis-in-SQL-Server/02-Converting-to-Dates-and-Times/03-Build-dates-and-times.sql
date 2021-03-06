/*
Build dates and times with offsets from parts
The DATETIMEOFFSETFROMPARTS() function builds a DATETIMEOFFSET out of component values. It has the most input parameters of any date and time builder function.

On January 19th, 2038 at 03:14:08 UTC, we will experience the Year 2038 (or Y2.038K) problem. This is the moment that 32-bit devices will reset back to the date 1900-01-01. This runs the risk of breaking every 32-bit device using POSIX time, which is the number of seconds elapsed since January 1, 1970 at midnight UTC.
*/

/*
Build a DATETIMEOFFSET which represents the last millisecond before the Y2.038K problem hits. The offset should be UTC.
Build a DATETIMEOFFSET which represents the moment devices hit the Y2.038K issue in UTC time. Then use the AT TIME ZONE operator to convert this to Eastern Standard Time.
*/
SELECT
	-- Fill in the millisecond PRIOR TO chaos
	DATETIMEOFFSETFROMPARTS(2038, 01, 19, 03, 14, 07, 999, 0, 0, 3) AS LastMoment,
    -- Fill in the date and time when we will experience the Y2.038K problem
    -- Then convert to the Eastern Standard Time time zone
	DATETIMEOFFSETFROMPARTS(2038, 01, 19, 03, 14, 08, 0, 0, 0, 3) AT TIME ZONE 'Eastern Standard Time' AS TimeForChaos;
	

