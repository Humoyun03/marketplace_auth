import 'dart:convert';


import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Network {

  static Alice alice =
  Alice(showNotification: true, showInspectorOnShake: true);

  static Dio getDio() {

    final dio = Dio(BaseOptions(
        baseUrl: 'https://mobile-dev.bizdaarzon.uz/api',
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        contentType: 'application/json',
        receiveDataWhenStatusError: true));

    // final sharedPreference = getIt<SharedPreferences>();
    // final accessToken = sharedPreference.getString("TOKEN") ?? "";

    dio.interceptors.add(alice.getDioInterceptor());

    // dio.interceptors
    //     .add(InterceptorsWrapper(onError: (DioException error, handler) async {
    //   if (error.response?.statusCode == 401) {
    //     print("token has expired");
    //     await _refreshToken();
    //     error.requestOptions.headers['Authorization'] = 'Bearer $accessToken';
    //     return handler.resolve(await _retry(error.requestOptions));
    //   }
    // }));

    return dio;
  }

  // static Future<void> _refreshToken() async {
  //   final sharedPreference = getIt<SharedPreferences>();
  //   final refreshToken = sharedPreference.getString("REFRESH") ?? "";
  //   final response = await getDio().post('auth/update-token',
  //       data: jsonEncode({'refresh-token': refreshToken}));
  //   if (response.statusCode == 200) {
  //     print("token is updated success");
  //     sharedPreference.setString(
  //         "TOKEN", response.data['access-token'].toString());
  //   }
  // }

  // static Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
  //   final options =
  //       Options(method: requestOptions.method, headers: requestOptions.headers);
  //   return getDio().request<dynamic>(requestOptions.path,
  //       data: requestOptions.data,
  //       queryParameters: requestOptions.queryParameters,
  //       options: options);
  // }
}
