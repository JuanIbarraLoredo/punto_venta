import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:punto_venta/Controlador/Agregar_Usuario_Controller.dart';
import 'package:punto_venta/Controlador/Ver_Usuario.dart';
import 'package:punto_venta/Modelo/Usuario_Modelo.dart';
import 'package:punto_venta/Vista/Menu.dart';

class Agregar_Usuario extends StatefulWidget {
  final List<Usuarios>? usuario;

  Agregar_Usuario({Key? key, required this.usuario}) : super(key: key);

  @override
  _Agregar_UsuarioState createState() => _Agregar_UsuarioState();
}

class _Agregar_UsuarioState extends State<Agregar_Usuario> {
  final UsarioController controller = UsarioController();
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController contraController = TextEditingController();
  final VerUsuariosController c = VerUsuariosController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Usuarios'),
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
                controller: usuarioController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.personOutline,
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
                  labelText: '  Usuario ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                obscureText: true,
                controller: contraController,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.lockOutline,
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
                  labelText: '  Contraseña  ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  String usuario = usuarioController.text;
                  String contra = contraController.text;
                  controller.Agregar_Usuario(usuario, contra);
                  setState(() {});
                },
                label: const Text(
                  'Agregar Uusario',
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
                    horizontal: 29,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 146, 146),
                ),
              ),
            ),
            Center(
              child: ListView(
                shrinkWrap: true,
                children: c.optenerUsuario().map((Usuarios) {
                  return ListTile(
                    title: Text(Usuarios!.usuario,
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    subtitle: Text("Contraseña: " + Usuarios!.contra,
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 146, 146),
                      child: Text(Usuarios!.usuario.substring(0, 1)),
                    ),
                    trailing: ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Eliminar Usuario"),
                            content: Text(
                                "¿Estás seguro de que quieres eliminar este Usuario?"),
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
                                  var box = Hive.box('usuarios');
                                  box.delete(Usuarios.usuario);
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
