import 'package:hive/hive.dart';
import 'package:punto_venta/Modelo/Productos.dart';

class VerProductosController {
  List<Productos> optenerProducto() {
    var productosBox = Hive.box('productos');
    List<Productos> listaProductos = [];

    if (productosBox.isNotEmpty) {
      for (var producto in productosBox.values) {
        print('producto: $producto');
        listaProductos.add(Productos(
          id: producto['id'],
          nombre: producto['nombre'],
          cantidad: producto['cantidad'],
          precio: producto['numero'],
          categoria: producto['categoria'],
        ));
      }
    }

    return listaProductos;
  }
}
