import 'package:bloc_test/data/models/character.dart';
import 'package:bloc_test/data/web_services/cahracters_web_services.dart';

class CharactersRepo {
  final CharactersWebServices werbService;

  CharactersRepo(this.werbService);

  Future<List<Character>> getAllChars() async {
    final characters = await werbService.getAllChars();
    return characters.map((e) => Character.fromJson(e)).toList();
  }
}