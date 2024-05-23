import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatelessWidget{
  const Mapa1 ({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('app de maps'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=84b7d779f4c0453cb76cccfc2988c1a5',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-23.5945, - 48.053923),
                    builder: (ctx) => Container(
                      child: Icon(Icons.car_crash, color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}