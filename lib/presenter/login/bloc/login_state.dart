part of 'login_bloc.dart';



class LoginScreenState{
 LoginResponse? response;
 LoginScreenState({this.response});

 LoginScreenState copy({LoginResponse? loginResponse}) {
   return LoginScreenState(response: loginResponse);
 }

}
