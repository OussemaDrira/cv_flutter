import 'package:flutter/material.dart';
import 'package:projetcv/screen/shape/SwipperProjet.dart';
import 'package:projetcv/screen/shape/SwipperProjet1.dart';

import '../widgets/header.dart';

class Projet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          child: SwipperProjet(),
        ),
        Container(
          child: SwipperProjet1(),
        ),
      ],
    );
  }
}
