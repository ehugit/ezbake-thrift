namespace java ezbake.procedures

include "ezbakeTypes.thrift"
include "ezbakeBaseService.thrift"

struct SSR
{
  1: required string uri;
  2: optional string snippet;
  3: optional ezbakeTypes.DateTime resultDate;
  4: optional ezbakeTypes.Coordinate coordinate;
  5: optional ezbakeTypes.Preview preview;
}

service BaseProcedure extends ezbakeBaseService.EzBakeBaseService
{

	SSR getStandardSerachResultForURI(1:string uri, 2:ezbakeTypes.Security security);
	SSR getStandSearchResultForURIs(1:list<string> uris, 2:ezbakeTypes.Security security);
}
