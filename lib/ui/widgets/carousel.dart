// ignore_for_file: library_private_types_in_public_api

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/values/constants.dart';

List<String> _photos = [
  StringConst.instagramUrl,
  StringConst.emergencyUrl,
  StringConst.parallaxUrl,
  StringConst.playerUrl,
  StringConst.shoesUrl,
  StringConst.listUrl,
  StringConst.slideUrl,
];

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return const MyScener();
  }
}

class CardData {
  late Color color;
  double? x, y, z, angle;
  final int idx;
  double alpha = 0;

  Color get lightColor {
    var val = HSVColor.fromColor(color);
    return val.withSaturation(.5).withValue(.8).toColor();
  }

  CardData(this.idx) {
    color = Colors.primaries[idx % Colors.primaries.length];
    x = 0;
    y = 0;
    z = 0;
  }
}

class MyScener extends StatefulWidget {
  const MyScener({Key? key}) : super(key: key);

  @override
  _MyScenerState createState() => _MyScenerState();
}

class _MyScenerState extends State<MyScener>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  List<CardData> cardData = [];
  int numItems = _photos.length;
  double radio = 200.0;
  late double radioStep;
  int centerIdx = 1;

  @override
  void initState() {
    cardData = List.generate(numItems, (index) => CardData(index)).toList();
    radioStep = (pi * 2) / numItems;

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    _animationController.addListener(() => setState(() {}));
    _animationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        _animationController.value = 0;
        _animationController.animateTo(1);
        ++centerIdx;
      }
    });
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ratio = _animationController.value;
    double animValue = centerIdx + ratio;
    // process positions.
    for (var i = 0; i < cardData.length; ++i) {
      var c = cardData[i];
      double ang = c.idx * radioStep + animValue;
      c.angle = ang + pi / 2;
      c.x = cos(ang) * radio;
//      c.y = sin(ang) * 10;
      c.z = sin(ang) * radio;
    }

    // sort in Z axis.
    cardData.sort((a, b) => a.z!.compareTo(b.z!));

    var list = cardData.map((vo) {
      var c = addCard(vo);
      var mt2 = Matrix4.identity();
      mt2.setEntry(3, 2, 0.001);
      mt2.translate(vo.x, vo.y!, -vo.z!);
      mt2.rotateY(vo.angle! + pi);
      c = Transform(
        alignment: Alignment.center,
        origin: const Offset(0.0, -0.0),
        transform: mt2,
        child: c,
      );

      return c;
    }).toList();

    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: list,
      ),
    );
  }

  Widget addCard(CardData vo) {
    var alpha = ((1 - vo.z! / radio) / 2) * .6;
    Widget c;
    c = Container(
      margin: const EdgeInsets.all(12),
      width: 120,
      height: 250,
      alignment: Alignment.center,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black.withOpacity(alpha),
      ),
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   stops: [0.1, .9],
        //   colors: [vo.lightColor, vo.color],
        // ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2 + alpha * .2),
              spreadRadius: 1,
              blurRadius: 12,
              offset: const Offset(0, 2))
        ],
      ),
      child: Image.asset(_photos[vo.idx]), // Text('ITEM ${vo.idx}'),
    );
    return c;
  }
}
