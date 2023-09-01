// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:slider_categories/features/slider_categories/domain/models/category.dart';

// class CategoriesRemoteDataSource {
//   final _dio = Dio();

//   Future<dynamic> getAllCategories() async {
//     const url =
//         'https://soa-desa-iis.imperial.cl/RsAppImperialV3/RsImperial.svc/GetAllCategory?name=APP';

//     final response = await _dio.get(url);

//     if (response.statusCode == 200) {
//       List<Category>? categoryData = response.data['data']
//           .map((json) => Category.fromJson(json))
//           .toList()
//           .cast<Category>();

//       return categoryData;
//     } else {
//       log('${response.statusCode} : ${response.data.toString()}');
//     }
//   }
// }

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:slider_categories/features/slider_categories/domain/models/category.dart';

class CategoriesRemoteDataSource {
  final _dio = Dio();

  Future<List<Category>> getAllCategories() async {
    const url =
        'https://soa-qa-iis.imperial.cl/RsAppImperialV3/RsImperial.svc/GetAllCategory?name=APP';

    final response = await _dio.get(url);
    print('Respuesta JSON: ${response.data}');

    if (response.statusCode != 200) {
      log('Error - ${response.statusCode} : ${response.data.toString()}');
      throw Exception('Error al obtener las categorías');
    }

    final List<Map<String, dynamic>> data =
        List<Map<String, dynamic>>.from(response.data);

    final List<Category> categories = data.map((json) {
      final int id = json['id_nodo'] as int;
      final String image = json['image'] as String;
      final String nombre = json['nombre'] as String;
      final int orden = json['orden'] as int;

      return Category(id: id, image: image, nombre: nombre, orden: orden);
    }).toList();

    categories.sort((a, b) => a.orden.compareTo(b.orden));

    log('Categorías cargadas: $categories');

    return categories;
  }
}
