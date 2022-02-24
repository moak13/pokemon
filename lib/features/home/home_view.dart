import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/home_viewmodel.dart';
import 'widget/pokemon_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.fetchPokemons(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Pokemon'),
          ),
          body: model.isBusy
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : model.pokemonList!.isEmpty
                  ? const Center(
                      child: Text('No Pokemons available'),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 150,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: model.pokemonList!.length,
                      itemBuilder: (c, i) {
                        return PokemonCard(
                          title: model.pokemonList![i].name,
                          onTap: () {},
                        );
                      },
                    ),
        );
      },
    );
  }
}
