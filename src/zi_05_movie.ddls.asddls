@AbapCatalog.sqlViewName: 'ZI_05_MOVIE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movie'
define root view ZI_5_Movie as select from zabap_movie_a
composition [0..*] of ZI_5_Rating as _Ratings 
{
  key movie_uuid as MovieUuid,
  title as Title,
  genre as Genre,
  publishing_year as PublishingYear,
  runtime_in_min as RuntimeInMin,
  image_url as ImageUrl,
  created_at as CreatedAt,
  created_by as CreatedBy,
  last_changed_at as LastChangedAt,
  last_changed_by as LastChangedBy,
  _Ratings
}
