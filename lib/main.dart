import 'package:braking_bad_api/business_logic/characters_cubit.dart';
import 'package:braking_bad_api/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/networking/characters_api_call.dart';
import 'data/repository/character_repository.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    CharacterRepository charactersRepo = CharacterRepository(CharactersApiCall());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (context)=>CharactersCubit(charactersRepo),
          child: CharactersScreen(),
      ),
    );
  }
}
