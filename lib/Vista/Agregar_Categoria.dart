import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:punto_venta/Controlador/ver_categorias.dart';
import 'package:punto_venta/Vista/Menu.dart';
import 'package:punto_venta/Modelo/Categoria_Modelo.dart';
import 'package:punto_venta/Controlador/Agregar_CategoriaController.dart';

class Agregar_Categoria extends StatefulWidget {
  final List<Categorias>? categorias;

  Agregar_Categoria({Key? key, required this.categorias}) : super(key: key);

  @override
  _Agregar_CategoriaState createState() => _Agregar_CategoriaState();
}

class _Agregar_CategoriaState extends State<Agregar_Categoria> {
  final CategoriaController controller = CategoriaController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController codigoController = TextEditingController();
  final VerCategoriasController c = VerCategoriasController();

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
                controller: nombreController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.gridOutline,
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
                  labelText: 'Nombre de la categoria ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                controller: codigoController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.code,
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
                  labelText: 'Codigo de la categoria',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  String nombre = nombreController.text;
                  String codigo = codigoController.text;
                  controller.AgregarCategoria(nombre, codigo);
                  setState(() {});
                },
                label: const Text(
                  'Agregar Categoria',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                icon:
                    const Icon(Icons.add, color: Color.fromARGB(255, 0, 0, 0)),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 146, 146),
                ),
              ),
            ),
            Center(
              child: ListView(
                shrinkWrap: true,
                children: c.optenerCategoria().map((categorias) {
                  return ListTile(
                    title: Text(categorias!.nombre),
                    subtitle: Text("Codigo: " + categorias!.codigo),
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 146, 146),
                      child: Text(categorias!.nombre.substring(0, 1)),
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
                                  var box = Hive.box('categorias');
                                  box.delete(categorias.nombre);
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
