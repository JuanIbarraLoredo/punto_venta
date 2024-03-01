import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:punto_venta/Vista/Menu.dart';

void main(List<String> args) {
  runApp(Ejemplo());
}

class Ejemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: '',
      ),
      title: 'Punto de venta',
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Categoria> _categorias = [
    Categoria(nombre: "Refrescos", codigo: "087956"),
    Categoria(nombre: "Sabritas", codigo: "34341234"),
    Categoria(nombre: "Jugos", codigo: "21312312"),
    Categoria(nombre: "Helados", codigo: "5653543"),
    Categoria(nombre: "Galletas", codigo: "232321"),
  ];
  final String title;
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  label: const Text(''),
                  icon: const Icon(
                    EvaIcons.arrowIosBackOutline,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
              child: Image.asset(
                'assets/spiderman2.png',
                width: 350,
                height: 200,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
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
                onPressed: () {},
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
                    horizontal: 80,
                    vertical: 12,
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 77, 77),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _categorias.length,
              itemBuilder: (context, index) {
                return Text(_categorias[index].nombre);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Categoria {
  String nombre;
  String codigo;

  Categoria({required this.nombre, required this.codigo});
}
