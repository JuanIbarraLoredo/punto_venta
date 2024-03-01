import 'package:hive/hive.dart';
import 'package:punto_venta/Vista/Agregar_Usuarios.dart';

class UsarioController {
  void Agregar_Usuario(
    String usuario,
    String contra,
  ) {
    bool isValid = true;
    //1.-validar primero mis datos de entrada
    //checar que no este vacio
    //checar que corresponda al tipo de dato que espero

    //2.- Agregar producto a la base de datos
    //si y solo si la información es valida

    if (isValid) {
      var usuarios = Hive.box('usuarios');
      usuarios.put(usuario, {'usuario': usuario, 'contraseña': contra});
    }
  }
}
