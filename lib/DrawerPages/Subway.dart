import 'package:flutter/material.dart';

class Subway extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Información del Metro"),
        centerTitle: true,
      ),
      body: const Text(
              '''El metro es un sistema de trenes urbanos ubicado dentro 
              de una ciudad y su área metropolitana. Se caracteriza por ser
              un transporte masivo de pasajeros en las grandes ciudades, 
              uniendo diversas zonas y sus alrededores, con alta capacidad 
              y frecuencia y de forma segregada a otros sistemas de
              transporte.''', 
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), 
              maxLines: 15,
        ),
    );
  }
}