import 'package:hive/hive.dart';
import 'package:punto_venta/Modelo/Categoria_Modelo.dart';

class VerCategoriasController {
  List<Categorias> optenerCategoria() {
    var categoriasBox = Hive.box('categorias');
    List<Categorias> listaCategorias = [];

    if (categoriasBox.isNotEmpty) {
      for (var categoria in categoriasBox.values) {
        print('Categoria: $categoria');
        listaCategorias.add(Categorias(
          nombre: categoria['nombre'],
          codigo: categoria['codigo'],
        ));
      }
    }

    return listaCategorias;
  }
}
