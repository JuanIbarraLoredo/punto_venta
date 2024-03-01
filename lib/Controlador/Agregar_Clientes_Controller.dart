import 'package:hive/hive.dart';

class ClienteController {
  void Agregar_Cliente(
    String id,
    String nombre,
    String apellido,
    String numero,
    String correo,
  ) {
    bool isValid = true;
    if (isValid) {
      var clientes = Hive.box('clientes');
      clientes.put(id, {
        'id': id,
        'nombre': nombre,
        'apellido': apellido,
        'numero': numero,
        'correo': correo
      });
    }
  }
}
