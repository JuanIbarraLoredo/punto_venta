class Categorias {
  String nombre;
  String codigo;

  Categorias({required this.nombre, required this.codigo});

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'codigo': codigo,
    };
  }
}
