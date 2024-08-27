import 'package:bloc/bloc.dart';
import 'package:news_app/Features/Data/repo/home_repo.dart';
import 'package:news_app/Features/Presentation/managers/cubit/article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit(this.homeRepo) : super(ArticleInitial());
  final HomeRepo homeRepo;

  Future<void> featchArticle(String category) async {
    emit(ArticleLoading());
    var result = await homeRepo.featchArticle(category);
    result.fold(
      (failure) {
        emit(ArticleFailure(errorMessage: failure.errorMessage));
      },
      (articles) {
        emit(ArticleSuccess(articles: articles));
      },
    );
  }
}

