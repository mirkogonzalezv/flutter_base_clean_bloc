// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:slider_categories/features/slider_categories/domain/models/category.dart';
// import 'package:slider_categories/features/slider_categories/presentation/bloc/slider_categories_bloc.dart';

// import 'presentation/widgets/category_button.dart';

// class SliderCategories extends StatelessWidget {
//   final String title;

//   const SliderCategories(
//       {Key? key, required this.title, required List<Category> categoryList})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFFF2F2F2),
//       constraints: const BoxConstraints(maxHeight: 170),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 1.0),
//                     child: Text(
//                       title,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                   ),
//                 ),
//                 BlocBuilder<SliderCategoriesBloc, SliderCategoriesState>(
//                   builder: (context, state) {
//                     return state.when(
//                       success: (categories) {
//                         return const Text(
//                           'Ver todas',
//                           style: TextStyle(
//                             color: Color(0xFF0C69AE),
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             decoration: TextDecoration.underline,
//                           ),
//                         );
//                       },
//                       error: () {
//                         return const Text(
//                           '',
//                         );
//                       },
//                       initial: () {
//                         return Container();
//                       },
//                       loading: () {
//                         return Container();
//                       },
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 8.0),
//           Flexible(
//             child: BlocBuilder<SliderCategoriesBloc, SliderCategoriesState>(
//               builder: (context, state) {
//                 return state.when(
//                   initial: () {
//                     return Container();
//                   },
//                   loading: () {
//                     return const Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   },
//                   success: (categories) {
//                     return ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: categories.length,
//                       itemBuilder: (context, index) {
//                         final category = categories[index];
//                         return CategoryButton(
//                           categoryItem: category,
//                         );
//                       },
//                     );
//                   },
//                   error: () {
//                     return const Center(
//                       child: Text('Error al traer las categorias'),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
