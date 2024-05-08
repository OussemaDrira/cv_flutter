import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:projetcv/screen/shape/Langue.dart';
import 'package:projetcv/screen/shape/Langue1.dart';
import 'package:projetcv/screen/shape/competance.dart';
import 'package:projetcv/screen/shape/competance1.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: double.infinity,
          width: double.infinity,
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset(
                        "images/yassine.jpg",
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Yassine Jomaa",
                    style: GoogleFonts.breeSerif(
                      color: Theme.of(context).canvasColor,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.contact_mail, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    Text("27 ans",
                      style: GoogleFonts.breeSerif(
                        color: Theme.of(context).canvasColor,
                        fontSize: 25,
                      ),
                    ),                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.email, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => _launchMail("yassine.jomaa@gmail.com"),
                      child: Text(
                        "yassine.jomaa@gmail.com",
                        style: GoogleFonts.breeSerif(
                          color: Theme.of(context).canvasColor,
                          fontSize: 20,
                        ),
                                            ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.phone, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => _launchPhone("92968068"),
                      child: Text(
                        "9296 8068", // Formatage du numéro avec un espace
                        style: GoogleFonts.breeSerif(
                          color: Theme.of(context).canvasColor,
                          fontSize: 20,
                        ),
                                            ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.card_travel, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    Text("Compétance",

                      style: GoogleFonts.breeSerif(
                        color: Theme.of(context).canvasColor,
                        fontSize: 25,
                      ),
                    ),                  ],
                ),
                SizedBox(height: 10),
                Competance(),
                SizedBox(height: 10),
                Langue(),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: double.infinity,
          width: double.infinity,
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset(
                        "images/oussema.jpeg",
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Oussema Drira",
                    style: GoogleFonts.breeSerif(
                      color: Theme.of(context).canvasColor,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.contact_mail, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    Text("23 ans",
                      style: GoogleFonts.breeSerif(
                        color: Theme.of(context).canvasColor,
                        fontSize: 25,
                      ),
                    ),                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.email, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => _launchMail("oussemadrira4@gmail.com"),
                      child: Text(
                        "oussemadrira4@gmail.com",
                        style: GoogleFonts.breeSerif(
                          color: Theme.of(context).canvasColor,
                          fontSize: 25,
                        ),

                    ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.phone, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => _launchPhone("93311360"),
                      child: Text(
                        "93311360",
                        style: GoogleFonts.breeSerif(
                          color: Theme.of(context).canvasColor,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.card_travel, color: Theme.of(context).canvasColor),
                    SizedBox(width: 20),
                    Text("Compétance",

                      style: GoogleFonts.breeSerif(
                        color: Theme.of(context).canvasColor,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Competance1(),
                SizedBox(height: 10),
                Langue1(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _launchPhone(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible de lancer $url';
    }
  }

  _launchMail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible de lancer $url';
    }
  }
}
