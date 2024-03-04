import 'package:flutter/material.dart';
import 'package:marketplace_auth/di/app_di.dart';
import 'package:marketplace_auth/presenter/login/login_page.dart';
import 'package:marketplace_auth/presenter/register/register_page.dart';
import 'package:marketplace_auth/presenter/verification/sms_code_succses.dart';

import 'data/remote/network/network.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Network.alice.getNavigatorKey(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const SMSSuccessPage(),
        'login':(context) => LoginPage(),
        'register':(context) => RegisterPage(),
      },

    );
  }
}
