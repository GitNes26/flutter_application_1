import 'package:flutter/material.dart';

class Bike extends StatelessWidget{
  @override

    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Información de la Bicicleta"),
        centerTitle: true,
      ),
      body: const Text(
              '''La bicicleta, coloquialmente llamada bici
              (también denominada como cicla o ciclo en Colombia, Cuba y
              Uruguay,​chiva, en México y cleta o chancha en Chile),es un
              vehículo de transporte personal de propulsión humana. Es 
              impulsada por el propio viajero, que acciona el vehículo con
              el esfuerzo muscular de las piernas, en particular mediante 
              pedales o manivelas.''', 
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), 
              maxLines: 15,
        ),
    );
  }
}