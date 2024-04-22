import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import '../models/map.dart';

class MapUtils extends StatefulWidget {
  MapModel locations;

  MapUtils(this.locations, {super.key});

  @override
  State<MapUtils> createState() => _MapUtilsState();
}

class _MapUtilsState extends State<MapUtils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.locations.name),
      ),
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(
            initialCenter: widget.locations.latlng,
            initialZoom: 15.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            ),
            MarkerLayer(markers: [
              Marker(
                  width: 200.0,
                  height: 200.0,
                  point: widget.locations.latlng, // Marker position
                  child: Column(
                    children: [
                      Text(
                        widget.locations.name,
                        style: const TextStyle(fontWeight: FontWeight.w900),
                      ),
                      const Icon(Icons.location_pin,
                          color: Colors.red,
                          size: 50.0
                      ),
                    ],
                  ))
            ])
          ],
        ),
        Positioned(
          left: MediaQuery
              .sizeOf(context)
              .width / 4,
          bottom: 0,
          child: ElevatedButton(
              onPressed: () {},
              child: const Text("Navigate")
          ),
        )
      ]),
    );
  }
}
