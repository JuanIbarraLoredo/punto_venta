import 'package:hive/hive.dart';
import 'package:punto_venta/Vista/Agregar_Productos.dart';

class ProductosController {
  void Agregar_Producto(
    String id,
    String nombre,
    String cantidad,
    String precio,
    String categoria,
  ) {
    bool isValid = true;
    if (isValid) {
      var productos = Hive.box('productos');
      productos.put(id, {
        'id': id,
        'nombre': nombre,
        'apellido': cantidad,
        'numero': precio,
        'correo': categoria
      });
    }
  }
}
