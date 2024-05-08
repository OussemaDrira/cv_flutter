import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Experience extends StatelessWidget {
  // Liste des expériences professionnelles (données fictives)
  final List<Map<String, String>> experiences = [
    {
      'company': 'stage Pfa recnov',
      'position': 'stagiaire',
      'duration': 'fev 2024 - mai 2024',
      'details': 'Conception et développement d\'applications de calcul de score pour matching avec un emplois'
    },
    {
      'company': 'stage a success way center',
      'position': 'stagiaire',
      'duration': 'fev 2018 - mai 2018',
      'details': 'Stage de pfe chez le centre succes way center au sein du quel devellepoment de site web avec le frame work cakephp'
    },
    {
      'company': 'formation dans le centre 3wacademy',
      'position': 'étudiant',
      'duration': 'jui 2024 - sep 2024',
      'details': 'Formation devellopemnt web au sein du centre 3w academy'
    },
    // Ajoutez d'autres expériences professionnelles ici
  ];
  final List<Map<String, String>> experiences1 = [
    {
      'company': 'Rec_Inov',
      'position': 'stagiaire',
      'duration': 'fev 2024 - mai 2024',
      'details': 'Conception et développement d\'application de calcul de score pour matching avec un emplois'
    },
    {
      'company': 'Formanet ',
      'position': 'stagiaire',
      'duration': 'juin 2023 - jui 2023',
      'details': 'Conception et développement d\'application web de gestion des opportines de travail '
    },
    {
      'company': 'Procan',
      'position': 'stagiaire',
      'duration': 'fev 2024 - sep 2024',
      'details': 'Conception et réalisation d\'une application mobile de livraison des colis'
    },
    // Ajoutez d'autres expériences professionnelles ici
  ];
  @override
  Widget build(BuildContext context) {
    return PageView(
        children: [
    Container(
        padding: EdgeInsets.all(10),
        color: Theme.of(context).backgroundColor, // Couleur du fond modifiée
        child: ListView.builder(
          itemCount: experiences.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExperienceDetails(experience: experiences[index]),
                  ),
                );
              },
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      experiences[index]['company'] ?? '',
                      style: GoogleFonts.breeSerif(
                        color: Theme.of(context).canvasColor,
                        fontSize: 25,
                      ),

                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(experiences[index]['position'] ?? '',
                    style: GoogleFonts.breeSerif(
                      color: Theme.of(context).shadowColor,
                      fontSize: 23,
                    ),
                  ),
                      Text(experiences[index]['duration'] ?? '',
                        style: GoogleFonts.breeSerif(
                          color: Theme.of(context).shadowColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white, // Couleur du fond modifiée
            child: ListView.builder(
              itemCount: experiences.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExperienceDetails(experience: experiences[index]),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        experiences1[index]['company'] ?? '',
                        style: GoogleFonts.breeSerif(
                          color: Theme.of(context).canvasColor,
                          fontSize: 25,
                        ),

                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(experiences1[index]['position'] ?? '',
                        style: GoogleFonts.breeSerif(
                          color: Theme.of(context).shadowColor,
                          fontSize: 23,
                        ),
                      ),
                          Text(experiences1[index]['duration'] ?? '',
                            style: GoogleFonts.breeSerif(
                              color: Theme.of(context).shadowColor,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
    ]);
  }
}

class ExperienceDetails extends StatelessWidget {
  final Map<String, String> experience;

  ExperienceDetails({required this.experience});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience Details',),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white, // Couleur du fond modifiée
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Entreprise: ${experience['company']}',
            style: GoogleFonts.breeSerif(
              color: Theme.of(context).canvasColor,
              fontSize: 25,
            ),

              ),
              SizedBox(height: 8.0),
              Text(' ${experience['position']}',
                style: GoogleFonts.breeSerif(
                  color: Theme.of(context).shadowColor,
                  fontSize: 20,
                ),
              ),

              SizedBox(height: 8.0),
              Text('Durée : ${experience['duration']}',
                style: GoogleFonts.breeSerif(
                color: Theme.of(context).shadowColor,
                fontSize: 20,
              ),
              ),
              SizedBox(height: 8.0),
              Text('Details  :  ${experience['details']}',
                style: GoogleFonts.breeSerif(
                  color: Theme.of(context).shadowColor,
                  fontSize: 17,
                ) ),
            ],
          ),
        ),
      ),
    );
  }
}
