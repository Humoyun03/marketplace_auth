



import 'package:marketplace_auth/data/model/request/check_exist/check_exist.dart';
import 'package:marketplace_auth/data/model/request/send_code/send_code.dart';
import 'package:marketplace_auth/data/model/request/sign_up/sign_up.dart';
import 'package:marketplace_auth/data/model/response/check_exist/check_exists.dart';
import 'package:marketplace_auth/data/model/response/logout/logout.dart';
import 'package:marketplace_auth/data/model/response/send_code/send_code.dart';
import 'package:marketplace_auth/data/model/response/sign_up/sign_up.dart';

import '../../data/model/request/login/login.dart';
import '../../data/model/response/login/login.dart';

abstract class AppRepository{
  Future<LoginResponse> loginUser(LoginRequest loginRequest);
  Future<SignUpResponse> registerUser(SignUpRequest signUpRequest);
  Future<SendCodeResponse> sendCode(SendCodeRequest sendCodeRequest);
  Future<CheckExistsResponse> checkExist(CheckExistRequest checkExistRequest);
  Future<LogOutResponse> logout();
}