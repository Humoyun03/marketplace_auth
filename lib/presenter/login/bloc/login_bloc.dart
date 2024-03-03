import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:marketplace_auth/data/model/request/sign_up/sign_up.dart';
import 'package:marketplace_auth/data/model/response/login/login.dart';
import 'package:marketplace_auth/data/model/response/sign_up/sign_up.dart';
import 'package:marketplace_auth/domain/repository/repository.dart';
import 'package:meta/meta.dart';

import '../../../data/model/request/login/login.dart';
import '../../../di/app_di.dart';
import '../../../utils/status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginScreenState> {
  LoginBloc() : super(LoginScreenState()) {
    final repository = getIt<AppRepository>();

    on<LoginUser>((event, emit) async {
    final response = await repository.loginUser(event.loginRequest);
    emit(state.copy(loginResponse: response));
    });
  }
}
