import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class ApiCaller {
  static final Logger _logger = Logger();

  
  static Future<ApiResponse> getRequest({required String url}) async {
    try {
      Uri uri = Uri.parse(url);
      _logRequest(url);
      Response response = await http.get(uri);
      _logResponse(url, response);
      final int statusCode = response.statusCode;
      final decodedData = jsonDecode(response.body);
      if (statusCode == 200) {
        return ApiResponse(
          responseCode: statusCode,
          responseData: decodedData,
          isSuccess: true,
          errorMessage: null,
        );
      } else {
        return ApiResponse(
          responseCode: statusCode,
          responseData: null,
          isSuccess: false,
          errorMessage: 'Error: $statusCode',
        );
      }
    } catch (e) {
      return ApiResponse(
        responseCode: -1,
        responseData: null,
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }


  static Future<ApiResponse> postRequest({
    required String url,
    Map<String, dynamic>? body,
  }) async {
    try {
      _logRequest(url, body: body);
      Uri uri = Uri.parse(url);
      Response response = await http.post(
        uri,
        body: body != null ? jsonEncode(body) : null,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        }
      );
      _logResponse(url, response);
      final int statusCode = response.statusCode;
      final decodedData = jsonDecode(response.body);
      if (statusCode == 200 || statusCode == 201) {
        return ApiResponse(
          responseCode: statusCode,
          responseData: decodedData,
          isSuccess: true,
          errorMessage: null,
        );
      } else {
        return ApiResponse(
          responseCode: statusCode,
          responseData: null,
          isSuccess: false,
          errorMessage: 'Error: $statusCode',
        );
      }
    } catch (e) {
      return ApiResponse(
        responseCode: -1,
        responseData: null,
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }

  static void _logRequest(String Url, {Map<String, dynamic>? body}) {
    _logger.i(
      'URL => $Url\n'
      'Request Body => $body\n'
    );
  }

  static void _logResponse(String Url, Response response) {
    _logger.i(
      'URL => $Url\n'
      'Response Code => ${response.statusCode}\n'
      'Response Body => ${response.body}\n'
    );
  }
}


class ApiResponse {
  final int responseCode;
  final dynamic responseData;
  final bool isSuccess;
  final String? errorMessage;

  ApiResponse({
    required this.responseCode,
    required this.responseData,
    required this.isSuccess,
    this.errorMessage = 'Something went wrong',
  });
}
