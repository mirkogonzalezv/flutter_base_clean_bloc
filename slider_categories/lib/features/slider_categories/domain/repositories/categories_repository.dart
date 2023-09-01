import 'package:slider_categories/features/slider_categories/domain/models/category.dart';

abstract class CategoriesRepository {
  Future<List<Category>> getAllCategories();
  Future<Category> getCategory({required int id});
}
