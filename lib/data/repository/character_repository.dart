import 'package:braking_bad_api/data/models/charactersResponse.dart';
import 'package:braking_bad_api/data/networking/characters_api_call.dart';

class CharacterRepository{
  final CharactersApiCall charactersApiCall;
  CharacterRepository(this.charactersApiCall);


  Future<List<CharactersResponse>> getAllCharactersApiCall() async{
    final charactersResponse = await charactersApiCall.getAllCharactersApiCall();
    return charactersResponse.map((e) => CharactersResponse.fromJson(e)).toList();
  }
}