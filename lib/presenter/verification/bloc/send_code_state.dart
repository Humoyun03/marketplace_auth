part of 'send_code_bloc.dart';



class SendCodeInitial {

  SendCodeResponse? response;
  SendCodeInitial({ this.response});

  SendCodeInitial copy({ SendCodeResponse? response}) {
    return SendCodeInitial( response:response ?? this.response);
  }
}
