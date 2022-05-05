import 'package:braking_bad_api/data/models/charactersResponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final CharactersResponse charactersResponse;
  const CharacterItem({Key? key, required this.charactersResponse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8)
      ),
      child: GridTile(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: FadeInImage.assetNetwork(placeholder: 'assets/images/loading.gif',
              image: charactersResponse.img!,fit: BoxFit.cover,)),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),
          ),
          child: Text(charactersResponse.name.toString(),
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        
      ),
    );
  }
}
