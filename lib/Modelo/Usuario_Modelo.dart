class Usuarios {
  String usuario;
  String contra;

  Usuarios({required this.usuario, required this.contra});

  Map<String, dynamic> toMap() {
    return {
      'nombre': usuario,
      'codigo': contra,
    };
  }
}
