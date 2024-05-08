import 'package:flutter/material.dart';
import 'package:vertical_barchart/vertical-barchart.dart';
import 'package:vertical_barchart/vertical-barchartmodel.dart';
import 'package:vertical_barchart/vertical-legend.dart';
class Langue extends StatefulWidget {
  const Langue({super.key});

  @override
  State<Langue> createState() => _CompetanceState();
}

class _CompetanceState extends State<Langue> {

  List<VBarChartModel> bardata = [
    VBarChartModel(
      index: 0,
      label: "Arabic",
      colors: [Colors.redAccent, Colors.redAccent],
      jumlah: 55,
      tooltip: "100%",


    ),
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
      tooltip: "75 %",
    ),
    VBarChartModel(
      index: 3,
      label: "Espagnol",
      colors: [Colors.blueGrey, Colors.blueGrey],
      jumlah: 10,
      tooltip: "20%",
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

