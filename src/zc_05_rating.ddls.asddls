@AbapCatalog.sqlViewName: 'ZC_05_RATING'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rating'
@Metadata.allowExtensions: true
define view ZC_5_Rating as select from ZI_5_Rating
association to parent ZC_5_Movie as _Movies on $projection.MovieUuid = _Movies.MovieUuid


{
  key RatingUuid,
  MovieUuid,
  UserName,
  Rating,
  RatingDate,
  _Movies
}
