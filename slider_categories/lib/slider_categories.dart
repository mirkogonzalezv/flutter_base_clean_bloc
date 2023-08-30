import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

// final List<String> imgList = [
//   'https://soa-desa-iis.imperial.cl/RsAppImperialV3/images/BlackF.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/maderasymuebleria.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/construccion.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/terminacionesyobragruesa.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/pisos.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/pinturasyaccesorios.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/bano.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/cocina.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/electricidad.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/ferreteria.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/herramientasymaquinaria.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/plomeriaygasfiteria.png',
//   'https://soa-desa-iis.imperial.cl/RsAppImperial/images/jardin.png',
// ];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 75, height: 75),
                ],
              )),
        ))
    .toList();

class SliderCategories extends StatelessWidget {
  final String title;
  const SliderCategories({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
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
              const Text(
                'Ver todas',
                style: TextStyle(
                  color: Color(0xFF0C69AE),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.0,
            enlargeCenterPage: false,
            viewportFraction: 0.2,
          ),
          items: imageSliders,
        ),
      ],
    );
  }
}
