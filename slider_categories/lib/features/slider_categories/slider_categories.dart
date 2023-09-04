import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slider_categories/features/slider_categories/presentation/bloc/slider_categories_bloc.dart';

class SliderCategories extends StatelessWidget {
  final String title;

  const SliderCategories({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF2F2F2),
      constraints: const BoxConstraints(maxHeight: 180),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                BlocBuilder<SliderCategoriesBloc, SliderCategoriesState>(
                  builder: (context, state) {
                    return state.when(
                      success: (categories) {
                        return const Text(
                          'Ver todas',
                          style: TextStyle(
                            color: Color(0xFF0C69AE),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        );
                      },
                      error: () {
                        return const Text(
                          '',
                        );
                      },
                      initial: () {
                        return Container();
                      },
                      loading: () {
                        return Container();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Flexible(
            child: BlocBuilder<SliderCategoriesBloc, SliderCategoriesState>(
              builder: (context, state) {
                return state.when(
                  initial: () {
                    return Container();
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  success: (categories) {
                    return CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 2.8,
                        enlargeCenterPage: false,
                        viewportFraction: 0.3,
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: categories.map((category) {
                        return Container(
                          margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 75,
                                height: 75,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Image.network(
                                        category.image,
                                        fit: BoxFit.cover,
                                        width: 45,
                                        height: 45,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return Container(
                                            width: 75,
                                            height: 75,
                                            decoration: const BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(4.0),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons
                                                    .image_not_supported_outlined,
                                                size: 30,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                category.nombre,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    );
                  },
                  error: () {
                    return const Center(
                      child: Text('Error al traer las categorias'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
