import 'package:flutter/material.dart';
import '../../domain/models/category.dart';

class CategoryButton extends StatelessWidget {
  final Category categoryItem;

  const CategoryButton({
    super.key,
    required this.categoryItem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          // * Contenedor de cada imagen ------
          Expanded(
            child: Container(
              width: 75,
              height: 75,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),

              // * imagenes ------
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Image.network(
                      categoryItem.image,
                      fit: BoxFit.cover,
                      width: 45,
                      height: 45,

                      // * error de imagenes ------
                      errorBuilder: (context, error, stackTrace) {
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
                              Icons.image_not_supported_outlined,
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
          ),

          // * Espacio entre imagenes y texto ------
          const SizedBox(height: 8.0),

          // * Texto categorias ------
          Expanded(
            child: Text(
              categoryItem.nombre,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
