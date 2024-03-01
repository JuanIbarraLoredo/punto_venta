import 'package:hive/hive.dart';

class CategoriaController {
  void AgregarCategoria(
    String nombre,
    String codigo,
  ) {
    bool isValid = true;
    //1.-validar primero mis datos de entrada
    //checar que no este vacio
    //checar que corresponda al tipo de dato que espero

    //2.- Agregar producto a la base de datos
    //si y solo si la información es valida

    if (isValid) {
      var categorias = Hive.box('categorias');
      categorias.put(nombre, {'nombre': nombre, 'codigo': codigo});
    }
  }
}
