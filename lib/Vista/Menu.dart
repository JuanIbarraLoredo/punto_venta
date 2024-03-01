import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:punto_venta/Modelo/Clientes_Modelo.dart';
import 'package:punto_venta/Modelo/Categoria_Modelo.dart';
import 'package:punto_venta/Modelo/Productos.dart';
import 'package:punto_venta/Modelo/Usuario_Modelo.dart';
import 'package:punto_venta/Vista/Agregar_Categoria.dart';
import 'package:punto_venta/Vista/Agregar_Clientes.dart';
import 'package:punto_venta/Vista/Agregar_Productos.dart';
import 'package:punto_venta/Vista/Agregar_Usuarios.dart';
import 'package:punto_venta/Vista/Alta_Productos.dart';
import 'package:punto_venta/Vista/Compras.dart';
import 'package:punto_venta/Inicio_Sesion.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final List<Categorias> categorias = [];
  final List<Usuarios> usuarios = [];
  final List<Clientes> clientes = [];
  final List<Productos> productos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 244, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 113, 113),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 0, bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Configuracion'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Mi perfil'),
                value: 2,
              ),
              PopupMenuItem(
                child: Text('Cerrar sesion'),
                value: 3,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/spiderman2.png',
                  width: 411,
                  height: 100,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Agregar_Usuario(usuario: usuarios)),
                  );
                },
                label: const Text(
                  'Agregar Usuarios',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                icon: const Icon(
                  Icons.person_add_alt,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 100),
                  textStyle: TextStyle(
                      fontSize: 20,
                      backgroundColor: Color.fromARGB(255, 253, 142, 142)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Agregar_Cliente(
                              cliente: clientes,
                            )),
                  );
                },
                label: const Text(
                  'Agregar Clientes',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                icon: const Icon(
                  Icons.person_add,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 100),
                  textStyle: TextStyle(
                      fontSize: 20,
                      backgroundColor: Color.fromARGB(255, 253, 142, 142)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AltaProducto(producto: productos)),
                  );
                },
                label: const Text(
                  'Agregar Productos',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                icon: const Icon(
                  Icons.add_box,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 100),
                  textStyle: TextStyle(
                      fontSize: 20,
                      backgroundColor: Color.fromARGB(255, 253, 142, 142)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Agregar_Categoria(
                        categorias: categorias,
                      ),
                    ),
                  );
                },
                label: const Text(
                  'Agregar Categoria',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                icon: const Icon(
                  EvaIcons.grid,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 100),
                  textStyle: TextStyle(
                      fontSize: 20,
                      backgroundColor: Color.fromARGB(255, 253, 142, 142)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Compras()),
                  );
                },
                label: const Text(
                  'Ir a comprar',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                icon: const Icon(
                  Icons.card_giftcard_sharp,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 100),
                  textStyle: TextStyle(
                      fontSize: 20,
                      backgroundColor: Color.fromARGB(255, 253, 142, 142)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
