import 'package:dio/dio.dart';

const int _connectTimeoutInMillis = 60 * 1000;
const int _sentTimeoutInMillis = 60 * 1000;
const int _receiveTimeoutInMillis = 60 * 1000;

class NetworkClient {
  final String baseUrl;

  NetworkClient(this.baseUrl) {
    _setupNetWorkClient(baseUrl);
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;

  _setupNetWorkClient(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
    _defaultHeaders();
    _defaultInterceptors();
    _defaultTimeouts();
  }

  void _defaultHeaders() {
    _dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
  }

  void _defaultInterceptors() {
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  void _defaultTimeouts() {
    _dio.options.connectTimeout = const Duration(milliseconds: _connectTimeoutInMillis);
    _dio.options.sendTimeout = const Duration(milliseconds: _sentTimeoutInMillis);
    _dio.options.receiveTimeout = const Duration(milliseconds: _receiveTimeoutInMillis);
  }

  void addHeader({
    required String headerKey,
    required String headerValue,
  }) {
    _dio.options.headers[headerKey] = headerValue;
  }

  void removeHeader(String headerKey) {
    _dio.options.headers.remove(headerKey);
  }

  void clearHeaders() {
    _dio.options.headers.clear();
  }
}
