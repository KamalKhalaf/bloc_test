import 'package:bloc/bloc.dart';
import 'package:bloc_test/data/models/character.dart';
import 'package:bloc_test/data/repostory/characters_repo.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepo;
  late List<Character> chars;
  CharactersCubit(this.charactersRepo) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepo.getAllChars().then((characters) {
      emit(CharactersLoaded(characters));
      chars = characters;
    });
    return chars;
  }
}
