import 'package:news_app/Features/Home/Data/models/articles_model/articles_model.dart';

abstract class ArticleState {}

class ArticleInitial extends ArticleState {}

class ArticleLoading extends ArticleState {}

class ArticleFailure extends ArticleState {
  final String errorMessage;

  ArticleFailure({required this.errorMessage});
}

class ArticleSuccess extends ArticleState {
  final List<ArticlesModel> articles;

  ArticleSuccess({required this.articles});
}
