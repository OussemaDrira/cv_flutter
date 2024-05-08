import 'package:flutter/material.dart';
import 'package:swipperview/swipperview.dart';

class SwipperProjet extends StatefulWidget {
  const SwipperProjet({super.key});

  @override
  State<SwipperProjet> createState() => _SwipperProjetState();
}

class _SwipperProjetState extends State<SwipperProjet> {
  List<Map<String, dynamic>> productList = [
    {
      'title':'projet cv Html',
      'description':"Projet de création de cv durant l'année  1 ére année Génie informatique a l'iit ",
      'url':'https://res.cloudinary.com/dimj6qkuf/image/upload/v1711673109/image/output_image_5_hcsl3s.jpg',
    },
    {
      'title':'Projet jeu de dragon',
      'description':'Projet jeu de dragon avec java Script avec nuveau de diffucultés',
      'url':'https://res.cloudinary.com/dimj6qkuf/image/upload/v1711671237/image/dragontest_rdxbs7.jpg',
    },
    {
      'title': 'projet cup of tea',
      'description': 'projet avec html et css de different nature de tea',
      'url': 'https://res.cloudinary.com/dimj6qkuf/image/upload/v1711668488/image/projethtml_gxm1rj.jpg',
    },
    {
      'title':'projet de Location de voiture',
      'description':'Projet de location de voiture avec Le framework asp.net',
      'url':'https://res.cloudinary.com/dimj6qkuf/image/upload/v1711673005/image/output_image_4_f2dy7y.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Swipper(

      data: productList,
      icon: Icons.timeline_outlined,

      onChange: (page) {

      },
      actionName: '',
      actionHandler: (index) {

      },

    );
  }

}
