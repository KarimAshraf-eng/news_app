import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/Core/Utils/api_services.dart';
import 'package:news_app/Features/Data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiServices: getIt.get<ApiServices>()));
}
