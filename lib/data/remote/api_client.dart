import 'package:dio/dio.dart';
import 'package:marketplace_auth/data/model/request/check_exist/check_exist.dart';
import 'package:marketplace_auth/data/model/request/login/login.dart';
import 'package:marketplace_auth/data/model/request/send_code/send_code.dart';
import 'package:marketplace_auth/data/model/request/sign_up/sign_up.dart';
import 'package:marketplace_auth/data/model/response/login/login.dart';
import 'package:marketplace_auth/data/model/response/logout/logout.dart';
import 'package:marketplace_auth/data/model/response/sign_up/sign_up.dart';

import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../model/response/check_exist/check_exists.dart';
import '../model/response/send_code/send_code.dart';

part 'api_client.g.dart';



@RestApi()
abstract class ApiClient {

  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/otp/send-code")
  Future<SendCodeResponse> sendCode(
      @Body() SendCodeRequest sendCodeRequest,
      @Header('x-device-type') String type,
      @Header('x-app-lang') String lang,
      @Header('x-device-model') String model,
      @Header('x-app-version') String version,
      @Header('x-app-build') String build,
      @Header('x-device-uid') String uid,
      @Header('x-fcm-token') String token,
      );

  @POST("/auth/exist")
  Future<CheckExistsResponse> checkCode(
      @Body() CheckExistRequest checkExistRequest,
      @Header('x-device-type') String type,
      @Header('x-app-lang') String lang,
      @Header('x-device-model') String model,
      @Header('x-app-version') String version,
      @Header('x-app-build') String build,
      @Header('x-device-uid') String uid,
      @Header('x-fcm-token') String token,
      );

  @POST("/auth/login")
  Future<LoginResponse> login(
      @Body() LoginRequest loginRequest,
      @Header('x-device-type') String type,
      @Header('x-app-lang') String lang,
      @Header('x-device-model') String model,
      @Header('x-app-version') String version,
      @Header('x-app-build') String build,
      @Header('x-device-uid') String uid,
      @Header('x-fcm-token') String token,
      );

  @POST("/auth/signup")
  Future<SignUpResponse> signUp(
      @Body() SignUpRequest signUpRequest,
      @Header('x-device-type') String type,
      @Header('x-app-lang') String lang,
      @Header('x-device-model') String model,
      @Header('x-app-version') String version,
      @Header('x-app-build') String build,
      @Header('x-device-uid') String uid,
      @Header('x-fcm-token') String token,
      );

  @POST("/auth/logout")
  Future<LogOutResponse> logout(
      @Header('x-device-type') String type,
      @Header('x-app-lang') String lang,
      @Header('x-device-model') String model,
      @Header('x-app-version') String version,
      @Header('x-app-build') String build,
      @Header('x-device-uid') String uid,
      @Header('x-fcm-token') String token,
      );
}
