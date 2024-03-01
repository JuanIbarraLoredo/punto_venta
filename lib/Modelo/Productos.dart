class Productos {
  String id;
  String nombre;
  String cantidad;
  String precio;
  String categoria;

  Productos(
      {required this.id,
      required this.nombre,
      required this.cantidad,
      required this.precio,
      required this.categoria});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'apellido': cantidad,
      'numero': precio,
      'correo': categoria,
    };
  }
}
