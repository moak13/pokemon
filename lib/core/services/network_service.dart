import 'dart:convert';

import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../exceptions/network_exceptions.dart';
import '../model/api_result.dart';
import 'http_service.dart';

abstract class NetworkService {
  Future<ApiResult<T>> get<T>({
    Uri? uri,
    Map<String, String>? headers,
    required Function converter,
  });
}

class NetworkServiceImpl implements NetworkService {
  final _httpService = locator<HttpService>();
  final log = getLogger('NetworkService -');

  @override
  Future<ApiResult<T>> get<T>({
    Uri? uri,
    Map<String, String>? headers,
    required Function converter,
  }) async {
    try {
      final response = await _httpService.appGet(uri: uri, headers: headers);
      final decodedJson = json.decode(response.body);
      log.i(decodedJson);
      return ApiResult.success(
        data: converter(decodedJson),
      );
    } catch (e, s) {
      log.e([e, s]);
      return ApiResult.failure(
        error: NetworkExceptions.getExceptions(e),
      );
    }
  }
}
