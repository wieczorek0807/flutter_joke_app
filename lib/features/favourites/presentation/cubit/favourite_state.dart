part of 'favourite_cubit.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = _Initial;
  const factory FavouriteState.loading() = _Loading;
  const factory FavouriteState.loaded(FavouritesListEntity favouritesListEntity) = _Loaded;
  const factory FavouriteState.error(String message) = _Error;
}
