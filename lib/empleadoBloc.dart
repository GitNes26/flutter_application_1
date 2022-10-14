// * 1.- imports
import 'dart:async';
import 'empleado.dart';

class EmpleadoBloc {
  // * 2.- Lista de empleados
  List<Empleado> _empleadosList = [
    Empleado(1, "Empleado 1", 1000.0),
    Empleado(2, "Empleado 2", 2000.0),
    Empleado(3, "Empleado 3", 3000.0),
    Empleado(4, "Empleado 4", 4000.0),
    Empleado(5, "Empleado 5", 5000.0)
  ];

  // * 3.- Streams Controller
  final _empleadoListStreamController = StreamController<List<Empleado>>();
  final _empleadoSalarioIncrementStreamController =
      StreamController<Empleado>();
  final _empleadoSalarioDecrementStreamController =
      StreamController<Empleado>();

  // * 4.- Getters: Stream y Sink
  // tipo de getter | keyword GET |
  Stream<List<Empleado>> get empleadoListStream =>
      _empleadoListStreamController.stream;
  StreamSink<List<Empleado>> get empleadoListSink =>
      _empleadoListStreamController.sink;
  StreamSink<Empleado> get empleadoSalarioIncrement =>
      _empleadoSalarioIncrementStreamController.sink;
  StreamSink<Empleado> get empleadoSalarioDecrement =>
      _empleadoSalarioDecrementStreamController.sink;

  // * 5.- Constructor - añadir data, escuchar cambios
  EmpleadoBloc() {
    _empleadoListStreamController.add(_empleadosList);
    _empleadoSalarioIncrementStreamController.stream.listen(_incrementSalario);
    _empleadoSalarioDecrementStreamController.stream.listen(_decrementSalario);
  }

// * 6.- Funciones principales (core functions)
  _incrementSalario(Empleado empleado) {
    double salarioActual = empleado.salario;
    double salarioIncrement = salarioActual * 20 / 100;

    _empleadosList[empleado.id - 1].salario = salarioActual + salarioIncrement;
    empleadoListSink.add(_empleadosList);
  }

  _decrementSalario(Empleado empleado) {
    double salarioActual = empleado.salario;
    double salarioDecrement = salarioActual * 20 / 100;

    _empleadosList[empleado.id - 1].salario = salarioActual - salarioDecrement;
    empleadoListSink.add(_empleadosList);
  }

// * 7.- dispose
  void dispose() {
    _empleadoSalarioIncrementStreamController.close();
    _empleadoSalarioDecrementStreamController.close();
    _empleadoListStreamController.close();
  }
}
