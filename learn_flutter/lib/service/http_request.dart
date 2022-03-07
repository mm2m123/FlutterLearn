import 'package:dio/dio.dart';
import 'package:learn_flutter/service/config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeout);
  static final Dio dio = Dio(baseOptions);

  static Future request(String url,
      {String method = "get", Map<String,
          dynamic>? parameters, Interceptor? interceptor}) async {
    final options = Options(method: method);
    //添加拦截器
    InterceptorsWrapper(onRequest: (options, handler) {

      // return requestInterceptor(options);
    });

    try {
      Response response = await dio.request(
          url, queryParameters: parameters, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
