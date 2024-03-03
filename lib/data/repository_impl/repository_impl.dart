

import 'package:marketplace_auth/data/model/request/check_exist/check_exist.dart';
import 'package:marketplace_auth/data/model/request/login/login.dart';
import 'package:marketplace_auth/data/model/request/send_code/send_code.dart';
import 'package:marketplace_auth/data/model/request/sign_up/sign_up.dart';
import 'package:marketplace_auth/data/model/response/check_exist/check_exists.dart';
import 'package:marketplace_auth/data/model/response/login/login.dart';
import 'package:marketplace_auth/data/model/response/logout/logout.dart';
import 'package:marketplace_auth/data/model/response/send_code/send_code.dart';
import 'package:marketplace_auth/data/model/response/sign_up/sign_up.dart';

import '../../di/app_di.dart';
import '../../domain/repository/repository.dart';
import '../remote/api_client.dart';

class AppRepositoryImpl extends AppRepository{
  final api = getIt<ApiClient>();


  @override
  Future<CheckExistsResponse> checkExist(CheckExistRequest checkExistRequest) async {
    final response  = await api.checkCode(
        checkExistRequest, "ios", "uz", "Simulator iPhone14,7 | 16.0",
        "1.0.2", "2", "71C7B833-C6EA-4326-A8FF-CB8551867656", " sadjdklsjdlsj");
    return response;
  }

  @override
  Future<LoginResponse> loginUser(LoginRequest loginRequest) async{
    final response  = await api.login(
        loginRequest, "ios", "uz", "Simulator iPhone14,7 | 16.0",
        "1.0.2", "2", "71C7B833-C6EA-4326-A8FF-CB8551867656", " sadjdklsjdlsj");
    return response;
  }

  @override
  Future<LogOutResponse> logout()async {
    final response  = await api.logout(
         "ios", "uz", "Simulator iPhone14,7 | 16.0",
        "1.0.2", "2", "71C7B833-C6EA-4326-A8FF-CB8551867656", " sadjdklsjdlsj");
    return response;
  }

  @override
  Future<SignUpResponse> registerUser(SignUpRequest signUpRequest) async{
    final response  = await api.signUp(
        signUpRequest, "ios", "uz", "Simulator iPhone14,7 | 16.0",
        "1.0.2", "2", "71C7B833-C6EA-4326-A8FF-CB8551867656", " sadjdklsjdlsj");
    return response;
  }

  @override
  Future<SendCodeResponse> sendCode(SendCodeRequest sendCodeRequest)async {
    final response  = await api.sendCode(
        sendCodeRequest, "ios", "uz", "Simulator iPhone14,7 | 16.0",
        "1.0.2", "2", "71C7B833-C6EA-4326-A8FF-CB8551867656", " sadjdklsjdlsj");
    return response;
  }


}
