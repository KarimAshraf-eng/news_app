import 'package:flutter/material.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/home_appbar.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppbar(),
      body: HomeBody(),
    );
  }
}