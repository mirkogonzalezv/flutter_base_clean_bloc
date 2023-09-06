import 'package:flutter/material.dart';

class HeaderSlider extends StatelessWidget {
  final String title;

  const HeaderSlider({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text('Categorías'),
        TextButton(onPressed: () {}, child: const Text('Ver todas'))
      ]),
    );
  }
}
