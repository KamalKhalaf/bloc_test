import 'package:bloc_test/business_logic/cubit/characters_cubit.dart';
import 'package:bloc_test/constants/strings.dart';
import 'package:bloc_test/data/repostory/characters_repo.dart';
import 'package:bloc_test/data/web_services/cahracters_web_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepo _charactersRepo;
  late CharactersCubit _charCubit;

  AppRouter() {
    _charactersRepo = CharactersRepo(CharactersWebServices());
    _charCubit = CharactersCubit(_charactersRepo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext contxt) => _charCubit,
            child: CharactersScreen(),
          ),
        );
    }
  }
}
