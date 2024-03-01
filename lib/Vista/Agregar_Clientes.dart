import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:punto_venta/Controlador/Agregar_Clientes_Controller.dart';
import 'package:punto_venta/Controlador/ver_Clientes.dart';
import 'package:punto_venta/Modelo/Clientes_Modelo.dart';
import 'package:punto_venta/Vista/Menu.dart';

class Agregar_Cliente extends StatefulWidget {
  final List<Clientes>? cliente;

  Agregar_Cliente({Key? key, required this.cliente}) : super(key: key);

  @override
  _Agregar_ClienteState createState() => _Agregar_ClienteState();
}

class _Agregar_ClienteState extends State<Agregar_Cliente> {
  final ClienteController controller = ClienteController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController correoController = TextEditingController();
  final VerClientesController control = VerClientesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Clientes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
              child: Image.asset(
                'assets/spiderman2.png',
                width: 500,
                height: 150,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.barChart,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    // borderSide: BorderSide.none,
                  ),
                  labelText: 'Codigo o id del Cliente ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                controller: nombreController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.peopleOutline,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    // borderSide: BorderSide.none,
                  ),
                  labelText: 'Nombre del cliente ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                controller: apellidoController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.person,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    // borderSide: BorderSide.none,
                  ),
                  labelText: 'Apellido del ciente ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                controller: numeroController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.phone,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    // borderSide: BorderSide.none,
                  ),
                  labelText: 'No.Telefono',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                controller: correoController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.email,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    // borderSide: BorderSide.none,
                  ),
                  labelText: 'Correo',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  String id = idController.text;
                  String nombre = nombreController.text;
                  String apellido = apellidoController.text;
                  String numero = numeroController.text;
                  String correo = correoController.text;
                  controller.Agregar_Cliente(
                      id, nombre, apellido, numero, correo);
                  setState(() {});
                },
                label: const Text(
                  'Agregar Cliente',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                icon: const Icon(Icons.addchart_outlined,
                    color: Color.fromARGB(255, 0, 0, 0)),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 252, 118, 118),
                ),
              ),
            ),
            Center(
              child: ListView(
                shrinkWrap: true,
                children: control.optenerCliente().map((Clientes) {
                  return ListTile(
                    title: Text(Clientes!.nombre),
                    subtitle: Text(
                        "Id: " + Clientes!.id + " Numero: " + Clientes!.numero),
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 146, 146),
                      child: Text(Clientes!.nombre.substring(0, 1)),
                    ),
                    trailing: ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Eliminar Categoria"),
                            content: Text(
                                "¿Estás seguro de que quieres eliminar esta categoría?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Cancelar",
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  var box = Hive.box('clientes');
                                  box.delete(Clientes.id);
                                  setState(() {});
                                },
                                child: Text(
                                  "Borrar",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 77, 77)),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      label: const Text(
                        '',
                      ),
                      icon: const Icon(EvaIcons.trash2Outline,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(),
                        shape: CircleBorder(),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        backgroundColor: Color.fromARGB(255, 255, 146, 146),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
