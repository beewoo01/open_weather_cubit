import 'package:http/http.dart' as http;

String httpErrorHandler(http.Response response) {
  final statusCode = response.statusCode;
  final reasonPharase = response.reasonPhrase;

  final String errorMessage = 'Request failed\nSTatus Code: $statusCode\nReson: $reasonPharase';

  return errorMessage;
}