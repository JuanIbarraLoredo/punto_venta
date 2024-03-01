class Clientes {
  String id;
  String nombre;
  String apellido;
  String numero;
  String correo;

  Clientes(
      {required this.id,
      required this.nombre,
      required this.apellido,
      required this.numero,
      required this.correo});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'apellido': apellido,
      'numero': numero,
      'correo': correo,
    };
  }
}
