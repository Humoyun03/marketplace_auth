import 'package:flutter/material.dart';
import 'package:marketplace_auth/di/app_di.dart';
import 'package:marketplace_auth/presenter/login/login_page.dart';
import 'package:marketplace_auth/presenter/verification/sms_code_succses.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LoginPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => SMSSuccessPage(),
        'login':(context) => LoginPage(),
      },

    );
  }
}
