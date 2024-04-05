part of 'joke_cubit.dart';

@freezed
class JokeState with _$JokeState {
  const factory JokeState.initial() = _Initial;
  const factory JokeState.loading() = _Loading;
  const factory JokeState.loaded(JokeEntity joke) = _Loaded;
  const factory JokeState.error(String error) = _Error;
}
