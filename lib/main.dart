import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Core/Utils/service_locator.dart';
import 'package:news_app/Features/Home/Data/repo/home_repo_impl.dart';
import 'package:news_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:news_app/Features/Home/Presentation/managers/cubit/article_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArticleCubit(
        getIt.get<HomeRepoImpl>(),
      )..featchArticle("sources=techcrunch"),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
    ),
    );
  }
}
