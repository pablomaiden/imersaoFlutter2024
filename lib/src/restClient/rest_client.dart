import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:fe_lab_clinicas_core/src/restClient/interceptors/auth_interceptors.dart';

final class RestClient extends DioForNative {
  RestClient(String baseUrl)
      : super(BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: Duration(seconds: 10),
            receiveTimeout: Duration(seconds: 60))) {
    interceptors.addAll([
      LogInterceptor(requestBody: true, responseBody: true),
      AuthInterceptors()
    ]);
  }

  RestClient get auth {
    options.extra['DIO_AUTH_KEY'] = true;
    return this;
  }

  RestClient get unAuth {
    options.extra['DIO_AUTH_KEY'] = false;
    return this;
  }
}
