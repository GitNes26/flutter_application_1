import 'package:flutter/material.dart';

class Car extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Información del Automóvil"),
        centerTitle: true,
      ),
      body: const Text(
              '''El automóvil, también denominados coche, carro, auto, etc; 
              es un vehículo motorizado con ruedas utilizado para el transporte. 
              La mayoría de las definiciones de automóvil, hacen referencia a los 
              vehículos que circulan principalmente por las carreteras, 
              con capacidad de uno a ocho personas, cuentan con cuatro neumáticos y 
              transportan principalmente a personas, antes que mercancías.''', 
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), 
              maxLines: 15,
        ),
    );
  }
}