import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Formation extends StatelessWidget {
  // Listes des chemins d'images et des contenus opposés
  final List<String> imagePaths = [
    'images/loading.jpg',
    'images/license.png',
    'images/bac.png',
    'images/diplome9.png',
  ];

  final List<String> oppositeContents = [
    'Institut International de Technologie de sfax ',
    "Faculté sciences économie et gestion de sfax",
    'lycée Hbib maazoun sfax ',
    'collége hbib bourguiba'
  ];
  final List<String> oppositeContents1 = [
    'Institut International de Technologie de sfax ',
    "Iset sfax ",
    'lycée Abou kacem chebi ',
    'collége hebib chabouni'
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      children:[

        Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text('Formations'),
          centerTitle: true,
          backgroundColor: Color(0x9E0A4FE3),
        ),
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: FixedTimeline.tileBuilder(
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.alternating,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    oppositeContents[index],
                    style: TextStyle(color:Theme.of(context).canvasColor,), // Changer la couleur du texte ici
                  ),
                ),
                contentsBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage(imagePaths[index]), // Utilisation dynamique de l'image
                    ),
                  ),
                ),
                connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: 4, // Afficher seulement 3 éléments
              ),
            ),
          ),
        ),
      ),
        Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            title: Text('Formations'),
            centerTitle: true,
            backgroundColor: Color(0x9E0A4FE3),
          ),
          body: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: FixedTimeline.tileBuilder(
                builder: TimelineTileBuilder.connectedFromStyle(
                  contentsAlign: ContentsAlign.alternating,
                  oppositeContentsBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      oppositeContents1[index],
                      style: TextStyle(color:Theme.of(context).canvasColor,), // Changer la couleur du texte ici
                    ),
                  ),
                  contentsBuilder: (context, index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Ink.image(
                        height: 180,
                        width: 180,
                        image: AssetImage(imagePaths[index]), // Utilisation dynamique de l'image
                      ),
                    ),
                  ),
                  connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
                  indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                  itemCount: 4, // Afficher seulement 3 éléments
                ),
              ),
            ),
          ),
        ),]
    );
  }
}
