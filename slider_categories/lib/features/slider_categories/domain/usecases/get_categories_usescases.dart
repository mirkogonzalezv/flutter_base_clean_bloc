import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../models/category.dart';
import '../models/category_error.dart';
import '../repositories/categories_repository.dart';

class GetCategoriesUsesCases {
  final CategoriesRepository _categoriesRepository;

  GetCategoriesUsesCases(this._categoriesRepository);

  Future<Either<CategoryError, List<Category>>> getAllCategories() async {
    try {
      List<Category> categoriesList =
          await _categoriesRepository.getAllCategories();

      return right(categoriesList);
    } on Exception catch (e) {
      log(e.toString());
      return left(
          CategoryError(message: 'Problemas al cargar lista de categorias'));
    }
  }
}
