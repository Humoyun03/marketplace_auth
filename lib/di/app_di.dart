
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/local/shared/SharedPref.dart';
import '../data/local/shared/impl/SharedPrefImpl.dart';
import '../data/remote/api_client.dart';
import '../data/remote/network/network.dart';


final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  getIt.registerSingleton<SharedPref>(SharedPrefImpl());
  getIt.registerSingleton<ApiClient>(ApiClient(Network.getDio()));

}
