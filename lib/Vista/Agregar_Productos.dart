import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:punto_venta/Controlador/Agregar_Clientes_Controller.dart';
import 'package:punto_venta/Controlador/Agregar_ProductoController.dart';
import 'package:punto_venta/Controlador/Ver_Productos.dart';
import 'package:punto_venta/Controlador/ver_Clientes.dart';
import 'package:punto_venta/Modelo/Clientes_Modelo.dart';
import 'package:punto_venta/Modelo/Productos.dart';
import 'package:punto_venta/Vista/Menu.dart';

class Agregar_Producto extends StatefulWidget {
  final List<Productos>? producto;

  Agregar_Producto({Key? key, required this.producto}) : super(key: key);

  @override
  _Agregar_ProductosState createState() => _Agregar_ProductosState();
}

class _Agregar_ProductosState extends State<Agregar_Producto> {
  final ProductosController controller = ProductosController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController cantidadController = TextEditingController();
  final TextEditingController precioController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();
  final VerProductosController control = VerProductosController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Categorias'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
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
                controller: cantidadController,
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
                controller: precioController,
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
                controller: categoriaController,
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
                  String cantidad = cantidadController.text;
                  String precio = precioController.text;
                  String categoria = categoriaController.text;
                  controller.Agregar_Producto(
                      id, nombre, cantidad, precio, categoria);
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
                children: control.optenerProducto().map((Productos) {
                  return ListTile(
                    title: Text(Productos!.nombre),
                    subtitle: Text("Id: " +
                        Productos!.id +
                        " Numero: " +
                        Productos!.precio),
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 146, 146),
                      child: Text(Productos!.nombre.substring(0, 1)),
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
                                  var box = Hive.box('productos');
                                  box.delete(Productos.id);
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
