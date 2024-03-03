part of 'send_code_bloc.dart';

@immutable
abstract class SendCodeState {}

class SendCodeInitial extends SendCodeState {

  SendCodeResponse? response;
  SendCodeInitial({ this.response});

  SendCodeInitial copy({ SendCodeResponse? response}) {
    return SendCodeInitial( response:response ?? this.response);
  }
}
