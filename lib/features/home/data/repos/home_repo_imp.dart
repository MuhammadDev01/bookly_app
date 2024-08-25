import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImp({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              '/volumes?Filtering=free-ebooks&q=programming&sorting=subject:programming');
      List<BookModel> newestBooks = [];
      for (var item in data['items']) {
        newestBooks.add(BookModel.fromJson(item));
      }
      return right(newestBooks);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
