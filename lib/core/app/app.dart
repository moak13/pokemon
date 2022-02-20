import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../features/details/details_view.dart';
import '../../features/home/home_view.dart';
import '../../features/splash/splash_view.dart';
import '../services/http_service.dart';
import '../services/network_service.dart';
import '../services/pokemon_service.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: SplashView, initial: true),
    AdaptiveRoute(page: HomeView, name: 'home_view'),
    AdaptiveRoute(page: DetailsView, name: 'details_view'),
  ],
  dependencies: [
    Singleton(classType: SnackbarService),
    Singleton(classType: NavigationService),
    LazySingleton(
      classType: HttpServiceImpl,
      asType: HttpService,
    ),
    LazySingleton(
      classType: NetworkServiceImpl,
      asType: NetworkService,
    ),
    LazySingleton(
      classType: PokemonServiceImpl,
      asType: PokemonService,
    ),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
