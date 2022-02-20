import 'package:http/http.dart' as http;

abstract class HttpService {
  Future<http.Response> appGet({Uri? uri, Map<String, String>? headers});
}

class HttpServiceImpl implements HttpService {
  final client = http.Client();
  final timeOut = const Duration(seconds: 15);
  @override
  Future<http.Response> appGet({Uri? uri, Map<String, String>? headers}) {
    final response = client.get(uri!, headers: headers);
    return response;
  }
}
