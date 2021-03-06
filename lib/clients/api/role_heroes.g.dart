// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_heroes.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://dry-bastion-45736.herokuapp.com/api/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<dynamic> login(json) async {
    ArgumentError.checkNotNull(json, 'json');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(json ?? <String, dynamic>{});
    final _data = <String, dynamic>{};
    final _result = await _dio.request('auth/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> register(json) async {
    ArgumentError.checkNotNull(json, 'json');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(json ?? <String, dynamic>{});
    final _data = <String, dynamic>{};
    final _result = await _dio.request('auth/register',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> logout(accessToken, json) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(json, 'json');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(json ?? <String, dynamic>{});
    final _data = <String, dynamic>{};
    final _result = await _dio.request('auth/logout',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> refresh(accessToken) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request('auth/refresh',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<List<Game>> games(accessToken) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('games',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Game.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<UserHero>> userHeroes(accessToken, gameId) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(gameId, 'gameId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('games/$gameId/heroes',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => UserHero.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<UserHero> userHero(accessToken, heroId) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(heroId, 'heroId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('heroes/$heroId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserHero.fromJson(_result.data);
    return value;
  }

  @override
  Future<dynamic> createHero(accessToken, json) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(json, 'json');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(json ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request('heroes/create',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> deleteHero(accessToken, heroId) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(heroId, 'heroId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request('heroes/$heroId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> updateHero(accessToken, heroId, json) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(heroId, 'heroId');
    ArgumentError.checkNotNull(json, 'json');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(json ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request('heroes/$heroId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> updateHeroCharacteristicValue(
      accessToken, heroId, characteristicId, json) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(heroId, 'heroId');
    ArgumentError.checkNotNull(characteristicId, 'characteristicId');
    ArgumentError.checkNotNull(json, 'json');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(json ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request(
        'heroes/$heroId/characteristics/$characteristicId/value',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> updateHeroAttributeValue(
      accessToken, heroId, attributeId, json) async {
    ArgumentError.checkNotNull(accessToken, 'accessToken');
    ArgumentError.checkNotNull(heroId, 'heroId');
    ArgumentError.checkNotNull(attributeId, 'attributeId');
    ArgumentError.checkNotNull(json, 'json');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(json ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request(
        'heroes/$heroId/attributes/$attributeId/value',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{r'Authorization': accessToken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }
}
