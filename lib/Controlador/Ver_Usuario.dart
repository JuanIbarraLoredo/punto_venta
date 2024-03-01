import 'package:hive/hive.dart';
import 'package:punto_venta/Modelo/Usuario_Modelo.dart';

class VerUsuariosController {
  List<Usuarios> optenerUsuario() {
    var usuariosBox = Hive.box('usuarios');
    List<Usuarios> listaUsuarios = [];

    if (usuariosBox.isNotEmpty) {
      for (var usuario in usuariosBox.values) {
        print('Usuario: $usuario');
        listaUsuarios.add(Usuarios(
          usuario: usuario['usuario'],
          contra: usuario['contraseña'],
        ));
      }
    }

    return listaUsuarios;
  }
}
