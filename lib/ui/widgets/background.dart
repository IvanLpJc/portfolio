import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Size size;
  const Background({super.key, required this.size});

  List<Widget> _buildBackground(double size) {
    List<Widget> list = [];

    for (int i = 0; i < 10; i++) {
      list.add(Positioned(
        bottom: 0,
        left: Random().nextDouble() * (size * 0.5),
        child: FadeInDown(
          delay: Duration(milliseconds: Random().nextInt(1000)),
          child: Container(
            width: 2,
            height: Random().nextDouble() * 750.0,
            color: Colors.grey[600],
          ),
        ),
      ));
      list.add(Positioned(
        top: 0,
        right: Random().nextDouble() * (size * 0.5),
        child: FadeInUp(
          delay: Duration(milliseconds: Random().nextInt(1000)),
          child: Container(
            width: 2,
            height: Random().nextDouble() * 750.0,
            color: Colors.grey[600],
          ),
        ),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(children: [..._buildBackground(size.height)]),
    );
  }
}
