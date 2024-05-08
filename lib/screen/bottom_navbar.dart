import 'package:flutter/material.dart';
// Importez le package GNav
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projetcv/Quiz/quiz_screen.dart';
import 'package:projetcv/screen/mapsMarker.dart';


import 'Experience.dart';
import 'Formation.dart';
import 'Profile.dart';
import 'Projet.dart';

class bottomNavbar extends StatefulWidget {
  Function switchTheme;

  bottomNavbar(this.switchTheme);

  @override
  State<bottomNavbar> createState() => _bottomNavbarState();
}

class _bottomNavbarState extends State<bottomNavbar> {
  var indexPages = 0;
  List<Widget> pages = [
    Profile(),
    Experience(),
    Formation(),
    Projet(),
    MyApp(),
    QuizScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Flutter '),centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.format_color_fill),
            onPressed: () {
              widget.switchTheme();
            },
          )
        ],
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: GNav( tabs:// Remplacez CurvedNavigationBar par GNav
        const [
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
          GButton(
            icon: Icons.explicit_rounded,
            text: 'Experiances',
          ),
          GButton(
            icon: Icons.school,
            text: 'Formations',
          ),
          GButton(
            icon: Icons.manage_accounts_outlined,
            text: 'Projects',
          ),

          GButton(
            icon: Icons.maps_home_work,
            text: 'location',
          ) ,
          GButton(
          icon: Icons.quiz,
          text: 'quiz',
        ),
        ],
          selectedIndex: indexPages, // Ajoutez selectedIndex pour sélectionner l'onglet actif
          onTabChange: (index) {
            setState(() {
              indexPages = index;
            });
          },
        ),
      ),
      body: pages[indexPages],
    );
  }
}
