import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/app/app.locator.dart';
import '../../../core/app/app.logger.dart';
import '../../../core/model/pokemon.dart';
import '../../../core/services/pokemon_service.dart';
import '../../../core/utils/enums.dart';

class HomeViewModel extends BaseViewModel {
  final _pokemonService = locator<PokemonService>();
  final _snackbarService = locator<SnackbarService>();
  final log = getLogger('HomeViewModel');

  List<Pokemon>? _pokemonList = [];
  List<Pokemon>? get pokemonList => _pokemonList;

  fetchPokemons() async {
    setBusy(true);
    final response = await _pokemonService.getPokemons();
    response.when(
      success: (success) {
        setBusy(false);
        _pokemonList = success.pokemon!;
        notifyListeners();
      },
      failure: (failure) {
        setBusy(false);
        _snackbarService.showCustomSnackBar(
          message: failure.error,
          variant: SnackbarType.negative,
        );
      },
    );
    setBusy(false);
  }
}
