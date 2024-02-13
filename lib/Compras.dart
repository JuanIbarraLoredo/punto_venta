import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/spiderman2.png',
                  width: 200,
                  height: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('Carrito'),
                  icon: const Icon(
                    EvaIcons.carOutline,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 75, 75),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      EvaIcons.barChart,
                      color: Color.fromARGB(255, 227, 2, 2),
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
                  labelText: 'Codigo o id del producto',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('Agregar'),
                  icon: const Icon(
                    Icons.add,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 12,
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 81, 81),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('Scanear'),
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 12,
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 81, 81),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/tabla.png',
              width: 600,
              height: 350,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 181, 181, 181),
                    width: 150,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Ejemplo de la tabla de productos'),
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
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Total a pagar = ****** '),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('Pagar'),
                  icon: const Icon(
                    Icons.wallet,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 12,
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 81, 81),
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
