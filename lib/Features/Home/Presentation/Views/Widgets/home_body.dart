import 'package:flutter/material.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/sliver_list_articles.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/list_view_category.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ListViewCategory(),
        ),
        SliverListArticles(),
      ],
    );
  }
}
