import 'package:braking_bad_api/business_logic/characters_cubit.dart';
import 'package:braking_bad_api/data/models/charactersResponse.dart';
import 'package:braking_bad_api/data/networking/characters_api_call.dart';
import 'package:braking_bad_api/data/repository/character_repository.dart';
import 'package:braking_bad_api/presentation/widgets/two_column_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  void initState() {
    super.initState();
    CharactersCubit.getInstance(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Characters')),
        body: BlocBuilder<CharactersCubit, CharactersState>(
            builder: (context, state) {
              if (state is CharactersDataLoaded) {
                return twoColumnGridViw(CharactersCubit.getInstance(context).characters);
              } else {
                return const Center(child: Text('loading'),);
              }
            }
        )
    );
  }
}