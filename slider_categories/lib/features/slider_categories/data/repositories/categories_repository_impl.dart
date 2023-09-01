import 'package:slider_categories/features/slider_categories/data/datasource/remote/categories_remote.dart';
import 'package:slider_categories/features/slider_categories/domain/models/category.dart';
import 'package:slider_categories/features/slider_categories/domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource _categriesRemoteDataSource;
  CategoriesRepositoryImpl(this._categriesRemoteDataSource);

  @override
  Future<List<Category>> getAllCategories() async {
    try {
      final result = await _categriesRemoteDataSource.getAllCategories();

      if (result != null) {
        return result;
      }

      return [];
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<Category> getCategory({required int id}) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }
}
