import 'package:flutter/material.dart';
import 'empleado.dart';
import 'empleadoBloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final EmpleadoBloc _empleadoBloc = EmpleadoBloc();

  @override
  void dispose() {
    super.dispose();
    _empleadoBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Empleadito")),
      body: Container(
        child: StreamBuilder<List<Empleado>>(
            stream: _empleadoBloc.empleadoListStream,
            builder:
                (BuildContext context, AsyncSnapshot<List<Empleado>> snapshot) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return  Card(
                    elevation: 5.0,
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text(snapshot.data![index].nombre.toString()),
                      subtitle: Text(snapshot.data![index].salario.toString()),
                      trailing: Icon(Icons.more_vert),
                    ),
                    
                  );

                },
              );
            }),
      ),
    );
  }
}
