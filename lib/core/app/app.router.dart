// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../features/details/details_view.dart';
import '../../features/home/home_view.dart';
import '../../features/splash/splash_view.dart';

class Routes {
  static const String splashView = '/';
  static const String home_view = '/home-view';
  static const String details_view = '/details-view';
  static const all = <String>{
    splashView,
    home_view,
    details_view,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.home_view, page: HomeView),
    RouteDef(Routes.details_view, page: DetailsView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const SplashView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    DetailsView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const DetailsView(),
        settings: data,
      );
    },
  };
}
