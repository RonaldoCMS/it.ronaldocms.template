import 'package:http/http.dart';

class ResponseException implements Exception {
  final Response response;

  ResponseException({
    required this.response,
  });
}
