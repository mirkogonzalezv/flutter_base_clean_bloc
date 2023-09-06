import 'package:flutter/material.dart';

import '../../domain/models/category.dart';
import 'category_button.dart';
import 'header_slider.dart';

class SliderCategories extends StatelessWidget {
  final List<Category> categoryList;

  const SliderCategories({
    super.key,
    required this.categoryList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderSlider(
          title: 'Header',
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              final category = categoryList[index];

              return CategoryButton(
                categoryItem: category,
              );
            },
          ),
        ),
      ],
    );
  }
}
