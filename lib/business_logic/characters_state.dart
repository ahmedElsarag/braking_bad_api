part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}
class CharactersDataLoaded extends CharactersState {
  final List<CharactersResponse> character;
  CharactersDataLoaded(this.character);
}
