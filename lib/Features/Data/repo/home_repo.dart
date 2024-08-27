import 'package:news_app/Core/Error/failure.dart';
import 'package:news_app/Features/Data/models/articles_model/articles_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ArticlesModel>>> featchArticle(String category);
}
