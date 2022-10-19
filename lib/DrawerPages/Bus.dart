import 'package:flutter/material.dart';

class Bus extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Información del Bus"),
        centerTitle: true,
      ),
      body: const Text(
              '''Un autobús, bus, ruta, camión, colectivo, flota, bondi, 
              guagua, micro, villavesa u ómnibus es un vehículo diseñado para
              transportar numerosas personas a través de vías urbanas. Generalmente
              es usado en los servicios de transporte público urbano e interurbano y 
              con trayecto fijo. Su capacidad puede variar entre 10 y 120 pasajeros.''', 
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), 
              maxLines: 15,
        ),
    );
  }
}