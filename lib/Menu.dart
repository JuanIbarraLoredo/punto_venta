import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:punto_venta/Alta_Productos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: '',
      ),
      title: 'Punto de venta',
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({
    super.key,
    required this.title,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 244, 244),
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 0,
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(''),
                  icon: const Icon(
                    EvaIcons.arrowForward,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 25,
                    ),
                    backgroundColor: Color.fromARGB(255, 201, 200, 200),
                  ),
                ),
                Image.asset(
                  'assets/spiderman2.png',
                  width: 400,
                  height: 100,
                ),
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Agregar usuarios'),
                icon: const Icon(
                  Icons.person,
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                      backgroundColor: Color.fromARGB(255, 255, 126, 126)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Agregar Clientes'),
                icon: const Icon(
                  Icons.person,
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                      backgroundColor: Color.fromARGB(255, 180, 163, 255)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alta_Productos()),
                  );
                },
                label: const Text('Agregar Productos'),
                icon: const Icon(
                  Icons.person,
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                      backgroundColor: Color.fromARGB(255, 255, 126, 212)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Agregar Categorias'),
                icon: const Icon(
                  Icons.person,
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: Color.fromARGB(255, 0, 234, 255)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Ir a comprar'),
                icon: const Icon(
                  Icons.person,
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                      backgroundColor: Color.fromARGB(255, 255, 178, 126)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
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
