import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:marketplace_auth/data/model/request/send_code/send_code.dart';
import 'package:marketplace_auth/data/model/request/sign_up/sign_up.dart';
import 'package:marketplace_auth/di/app_di.dart';
import 'package:marketplace_auth/domain/repository/repository.dart';
import 'package:meta/meta.dart';

import '../../../data/model/response/send_code/send_code.dart';
import '../../../utils/status.dart';

part 'send_code_event.dart';
part 'send_code_state.dart';

class SendCodeBloc extends Bloc<SendCodeEvent, SendCodeInitial> {
  SendCodeBloc() : super(SendCodeInitial()) {
    final repository = getIt<AppRepository>();
    on<SendCodeEvent>((event, emit)async {
      final response = await repository.sendCode(SendCodeRequest("auth", event.phone, ""));
      emit(state.copy(response: response));
    });
  }
}
