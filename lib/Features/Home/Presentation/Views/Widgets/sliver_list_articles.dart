import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/articles_widget.dart';
import 'package:news_app/Features/Home/Presentation/managers/cubit/article_cubit.dart';
import 'package:news_app/Features/Home/Presentation/managers/cubit/article_state.dart';

class SliverListArticles extends StatelessWidget {
  const SliverListArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleCubit, ArticleState>(builder: (context, state) {
      if (state is ArticleSuccess) {
        return SliverList.builder(
          itemCount: state.articles.length,
          itemBuilder: (context, index) {
            return ArticlesWidget(model: state.articles[index],);
          },
        );
      } else if (state is ArticleFailure) {
        return SliverToBoxAdapter(
          child: Center(child: Text(state.errorMessage)),
        );
      } else {
        return const SliverToBoxAdapter(
          child: SizedBox(
            height: 600,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      }
    });
  }
}
