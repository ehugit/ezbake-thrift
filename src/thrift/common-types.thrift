namespace java ezbake.core.data;

struct TimeZone
{
  1: required i16 hour;
  2: required i16 minute;
  3: required bool afterUTC;
}

struct Time 
{ 
	1: required i16 hour;
	2: required i16 minute;
	3: optional i16 second;
	4: required TimeZone tz; 
}

struct Date
{
	1: required i16 month;
	2: required i16 day;
	3: required i16 year; // Not this should change
}

struct DateTime 
{
	1: required Date date;
	2: optional Time time;	
}

struct Coordinate
{
  1: required double latitude;
  2: required double longitude;
}

struct Preview
{
	1: required String mimetype;
	2: required binary content;
}

struct SSR 
{
  1: required URI uri;
  2: optional string snippet;
  3: optional DateTime resultDate;
  4: optional Coordinate coordinate;
  5: optional Preview preview;
}
