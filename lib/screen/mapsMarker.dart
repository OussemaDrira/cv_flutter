import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {


  @override
  Widget build(BuildContext context) {
    return FlutterMap(

      options: MapOptions(
        initialCenter: LatLng(34.7968779,10.7204754),
        initialZoom: 9.2,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(34.7968779,10.7204754),
              width: 80,
              height: 80,
              child: ClipOval(child: Image.asset('images/oussema.jpeg',width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,)),
            ),
            Marker(
              point: LatLng(34.786951,10.6874391),
              width: 80,
              height: 80,
              child: ClipOval(child: Image.asset('images/yassine.jpg',width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,)),
            ),
          ],
        ),
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () =>
                  launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
            ),
          ],
        ),

      ],
    );
  }
}