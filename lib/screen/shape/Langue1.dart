import 'package:flutter/material.dart';
import 'package:vertical_barchart/vertical-barchart.dart';
import 'package:vertical_barchart/vertical-barchartmodel.dart';
import 'package:vertical_barchart/vertical-legend.dart';
class Langue1 extends StatefulWidget {
  const Langue1({super.key});

  @override
  State<Langue1> createState() => _CompetanceState();
}

class _CompetanceState extends State<Langue1> {

  List<VBarChartModel> bardata = [

    VBarChartModel(
      index: 1,
      label: "Français",
      colors: [Colors.brown, Colors.brown],
      jumlah: 45,
      tooltip: "75%",


    ),
    VBarChartModel(
      index: 2,
      label: "Anglais",
      colors: [Colors.brown, Colors.brown],
      jumlah: 45,
      tooltip: "70 %",
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            _buildGrafik(bardata),
          ],
        ));

  }

}
Widget _buildGrafik(List<VBarChartModel> bardata) {
  return VerticalBarchart(
    maxX: 55,
    data: bardata,
    showLegend: true,
    showBackdrop: true,
    barStyle: BarStyle.CIRCLE,
    alwaysShowDescription: true,
    legend: [

      Vlegend(
        isSquare: false,
        color: Colors.redAccent,
        text: "Niveau Advanced ",
      ),
      Vlegend(
        isSquare: false,
        color: Colors.brown,
        text: "Niveau B2 ",
      ),
      Vlegend(
        isSquare: false,
        color: Colors.blueGrey,
        text: "Niveau A1",
      ),

    ],
  );
}

