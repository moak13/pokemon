import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/app/app.locator.dart';
import '../../../core/app/app.router.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  _moveToHome() {
    _navigationService.clearStackAndShow(Routes.home_view);
  }

  handeStartUp() async {
    var _duration = const Duration(seconds: 3);
    Timer(_duration, _moveToHome);
  }
}
