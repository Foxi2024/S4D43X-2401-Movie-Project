@AbapCatalog.sqlViewName: 'ZI_05_RATING'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rating'
define view ZI_5_Rating as select from zabap_rating_a
association to parent ZI_5_Movie as _Movies on $projection.MovieUuid = _Movies.MovieUuid


{
  key rating_uuid as RatingUuid,
  movie_uuid as MovieUuid,
  user_name as UserName,
  rating as Rating,
  rating_date as RatingDate,
  _Movies
}
