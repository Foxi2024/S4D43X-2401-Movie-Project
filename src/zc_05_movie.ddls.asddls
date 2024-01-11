@AbapCatalog.sqlViewName: 'ZC_05_MOVIE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@EndUserText.label: 'Movie'
@Metadata.allowExtensions: true
define root view ZC_5_Movie as select from ZI_5_Movie
composition [0..*] of ZC_5_Rating as _Ratings
{
  key MovieUuid,
  @Search.defaultSearchElement: true    
  @Search.fuzzinessThreshold: 0.7
  Title,
  Genre,
  PublishingYear,
  RuntimeInMin,
  ImageUrl,
  CreatedAt,
  CreatedBy,
  LastChangedAt,
  LastChangedBy,
  _Ratings
}
