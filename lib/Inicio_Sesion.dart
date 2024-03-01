import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:punto_venta/Vista/Menu.dart';

Future<void> main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('categorias');
  var usuariosBox = await Hive.openBox('usuarios');
  var clintesBox = await Hive.openBox('clientes');
  var productosBox = await Hive.openBox('productos');

  await productosBox.clear();

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
      backgroundColor: Colors.white,
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
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/spiderman2.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      Icons.email,
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
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      Icons.lock,
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
                  ),
                  labelText: 'Contraseña',
                  // prefix: const Icon(Icons.home),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
              label: const Text(
                'Login',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              icon: const Icon(
                Icons.login,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 12,
                ),
                backgroundColor: Color.fromARGB(255, 255, 78, 78),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Forgot Password?'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 181, 181, 181),
                    // width: 150,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Or'),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 181, 181, 181),
                    // width: 150,
                    height: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 1,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    EvaIcons.facebook,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 1,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    EvaIcons.twitter,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 1,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    EvaIcons.google,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
