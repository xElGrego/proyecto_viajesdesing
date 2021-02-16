import 'package:flutter/material.dart';
import 'package:proyecto_viajesdesing/app/widgets/icons_home_travel.dart';

import 'homepage/destination_carrusel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 20.0),
              child: Text(
                "¿Qué te gustaria\nencontrar?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            DataIcon(),
            SizedBox(height: 15),
            DestinationCarrusel(),
            Text('Hotel Carrusel')
            
          ],
        ),
      ),
    );
  }
}
