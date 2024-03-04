
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:marketplace_auth/data/repository_impl/repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/local/shared/SharedPref.dart';
import '../data/local/shared/impl/SharedPrefImpl.dart';
import '../data/remote/api_client.dart';
import '../data/remote/network/network.dart';
import '../domain/repository/repository.dart';


final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  getIt.registerSingleton<SharedPref>(SharedPrefImpl());
  getIt.registerSingleton<ApiClient>(ApiClient(Network.getDio()));
  getIt.registerSingleton<AppRepository>(AppRepositoryImpl());

}
