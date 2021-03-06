import 'package:role_heroes/models/game/game.dart';
import 'package:role_heroes/models/user_hero/user_hero.dart';
import 'package:role_heroes/utils/base_controller.dart';

abstract class IUserHeroController {
  Future<List<UserHero>> userHeroes(int gameId);
  Future<UserHero> userHero(int heroId);
  Future<List<Game>> gamesForCreateUserHero();
  Future<dynamic> createHero(int gameId, String name);
  Future<dynamic> deleteHero(int heroId);
  // TODO get value and to method convert to map
  Future<dynamic> updateHero(int heroId, Map<String, dynamic> fields);
  Future<dynamic> updateHeroCharacteristic(int heroId, int characteristicId, Map<String, dynamic> values);
  Future<dynamic> updateHeroAttribute(int heroId, int attributeId, Map<String, dynamic> values);
}

class UserHeroController extends BaseController implements IUserHeroController {
  @override
  Future<List<UserHero>> userHeroes(int gameId) async {
    return apiClient.userHeroes(await getBearerToken(), gameId);
  }

  @override
  Future<UserHero> userHero(int heroId) async {
    return apiClient.userHero(await getBearerToken(), heroId);
  }

  @override
  Future<List<Game>> gamesForCreateUserHero() async {
    return apiClient.games(await getBearerToken());
  }

  @override
  Future createHero(int gameId, String name) async {
    var result;
    try {
      result = apiClient.createHero(await getBearerToken(), <String, dynamic>{
        'game_id': gameId,
        'name': name,
      });
    }
    catch (dioError) {
      result = handleException(dioError);
    }
    return result;
  }

  @override
  Future<dynamic> deleteHero(int heroId) async {
    return handleRequest(() async => apiClient.deleteHero(await getBearerToken(), heroId));
  }

  @override
  Future<dynamic> updateHero(int heroId, Map<String, dynamic> fields) {
    return handleRequest(() async => apiClient.updateHero(await getBearerToken(), heroId, fields));
  }

  @override
  Future updateHeroCharacteristic(int heroId, int characteristicId, Map<String, dynamic> values) async {
    return handleRequest(() async => apiClient.updateHeroCharacteristicValue(await getBearerToken(), heroId, characteristicId, values));
  }

  @override
  Future updateHeroAttribute(int heroId, int attributeId, Map<String, dynamic> values) {
    return handleRequest(() async => apiClient.updateHeroAttributeValue(await getBearerToken(), heroId, attributeId, values));
  }
}
