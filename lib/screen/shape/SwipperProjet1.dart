import 'package:flutter/material.dart';
import 'package:swipperview/swipperview.dart';

class SwipperProjet1 extends StatefulWidget {
  const SwipperProjet1({super.key});

  @override
  State<SwipperProjet1> createState() => _SwipperProjetState();
}

class _SwipperProjetState extends State<SwipperProjet1> {
  List<Map<String, dynamic>> productList = [
    {
      'title':'projet cv Html',
      'description':"Projet de création de cv durant l'année  1 ére année Génie informatique a l'iit ",
      'url':'https://res.cloudinary.com/dimj6qkuf/image/upload/v1714775893/image/ss4norspf89cbfn4uwuc.png',
    },
    {
      'title':"Project de gestion d'un enchere",
      'description':"Projet de gestion d'une enchère qui permet à l'utilisateur de vendre son produit lors d'une enchère dans une période bien définie",
      'url':'https://res.cloudinary.com/dimj6qkuf/image/upload/v1714775974/image/zj0uv4bqzvqwdbazrkyt.png',
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
