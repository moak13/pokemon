import 'dart:async';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.defaultError(String error) = DefaultError;
  static NetworkExceptions handleResponse(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 400:
        return const NetworkExceptions.defaultError('error');

      case 401:
        return const NetworkExceptions.defaultError('error');

      case 403:
        return const NetworkExceptions.defaultError('error');
      case 404:
        return const NetworkExceptions.defaultError('error');
      case 409:
        return const NetworkExceptions.defaultError('error');

      case 408:
        return const NetworkExceptions.defaultError('error');

      case 500:
        return const NetworkExceptions.defaultError('error');

      case 503:
        return const NetworkExceptions.defaultError('error');

      default:
        return const NetworkExceptions.defaultError('error');
    }
  }

  static NetworkExceptions getExceptions(dynamic e) {
    switch (e) {
      case SocketException:
        return const NetworkExceptions.defaultError('error');
      case TimeoutException:
        return const NetworkExceptions.defaultError('error');
      case FormatException:
        return const NetworkExceptions.defaultError('error');
      case HttpException:
        return const NetworkExceptions.defaultError('error');
      default:
        return const NetworkExceptions.defaultError('error');
    }
  }
}
