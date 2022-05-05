import 'package:bloc/bloc.dart';
import 'package:braking_bad_api/data/models/charactersResponse.dart';
import 'package:braking_bad_api/data/repository/character_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharacterRepository characterRepository;
  List<CharactersResponse> characters = [];


  static CharactersCubit getInstance(BuildContext context){
    return BlocProvider.of(context);
  }

  CharactersCubit(this.characterRepository) : super(CharactersInitial());





  List<CharactersResponse> getAllCharacters(){
    characterRepository.getAllCharactersApiCall().then((value){
      characters = value;
      print(characters[0].name);
      emit(CharactersDataLoaded(value));
    });
    return characters;
  }
}
