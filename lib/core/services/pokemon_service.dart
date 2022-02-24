import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../model/api_result.dart';
import '../model/pokemon_response.dart';
import 'network_service.dart';

abstract class PokemonService {
  Future<ApiResult<PokemonResponse>> getPokemons();
}

class PokemonServiceImpl implements PokemonService {
  final _networkService = locator<NetworkService>();
  final log = getLogger('PokemonService -');
  @override
  Future<ApiResult<PokemonResponse>> getPokemons() async {
    final response = await _networkService.get<PokemonResponse>(
      uri: Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100&offset=200'),
      converter: (json) {
        log.d(json);
        return PokemonResponse.fromJson(json);
      },
    );
    return response;
  }
}
