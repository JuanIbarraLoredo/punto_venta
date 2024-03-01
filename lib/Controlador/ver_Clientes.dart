import 'package:hive/hive.dart';
import 'package:punto_venta/Modelo/Clientes_Modelo.dart';

class VerClientesController {
  List<Clientes> optenerCliente() {
    var clientesBox = Hive.box('clientes');
    List<Clientes> listaClientes = [];

    if (clientesBox.isNotEmpty) {
      for (var cliente in clientesBox.values) {
        print('clientes: $cliente');
        listaClientes.add(Clientes(
          id: cliente['id'],
          nombre: cliente['nombre'],
          apellido: cliente['apellido'],
          numero: cliente['numero'],
          correo: cliente['correo'],
        ));
      }
    }

    return listaClientes;
  }
}
