import 'package:braking_bad_api/presentation/widgets/character_itme.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/charactersResponse.dart';

Widget twoColumnGridViw(List<CharactersResponse> characters){
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: characters.length,
      itemBuilder:(_,index) =>  CharacterItem(charactersResponse: characters[index],) );
}