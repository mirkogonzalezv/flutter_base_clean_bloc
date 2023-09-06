import '../../domain/models/category.dart';
import '../../domain/repositories/categories_repository.dart';
import '../datasource/remote/categories_remote.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource _categriesRemoteDataSource;
  CategoriesRepositoryImpl(this._categriesRemoteDataSource);

  @override
  Future<List<Category>> getAllCategories() async {
    try {
      final result = await _categriesRemoteDataSource.getAllCategories();

      return result;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
