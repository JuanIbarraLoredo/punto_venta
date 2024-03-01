import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Compras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compras'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/spiderman2.png',
                  width: 200,
                  height: 100,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Carrito',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  icon: const Icon(
                    EvaIcons.carOutline,
                    color: Color.fromARGB(255, 0, 0, 0),
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
                SizedBox(
                  width: 60,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Agregar',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  icon: const Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50),
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
            const SizedBox(
              height: 20,
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
                  label: const Text(
                    'Pagar',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  icon: const Icon(
                    Icons.wallet,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(
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
