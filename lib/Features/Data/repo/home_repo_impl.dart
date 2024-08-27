import 'package:dartz/dartz.dart';
import 'package:news_app/Core/Error/failure.dart';
import 'package:news_app/Core/Utils/api_services.dart';
import 'package:news_app/Features/Data/models/articles_model/articles_model.dart';
import 'package:news_app/Features/Data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});

  @override
  Future<Either<Failure, List<ArticlesModel>>> featchArticle(String category) async {
    try {
      var data = await apiServices.get(category);
      List<ArticlesModel> articles = [];
      for (var article in data["articles"]) {
        articles.add(ArticlesModel.fromJson(article));
      }
      return Right(articles);
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
