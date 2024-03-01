import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:punto_venta/Controlador/Agregar_ProductoController.dart';
import 'package:punto_venta/Controlador/Ver_Productos.dart';
import 'package:punto_venta/Modelo/Productos.dart';
// Asegúrate de que las rutas de importación sean correctas según tu estructura de archivos

class AltaProducto extends StatefulWidget {
  final List<Productos>? producto;

  AltaProducto({Key? key, this.producto}) : super(key: key);

  @override
  _AltaProductoState createState() => _AltaProductoState();
}

class _AltaProductoState extends State<AltaProducto> {
  final ProductosController controller = ProductosController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController cantidadController = TextEditingController();
  final TextEditingController precioController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();
  // Asumiendo que tienes un controlador llamado VerProductosController
  final VerProductosController control = VerProductosController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Productos'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 0),
              child: Image.asset(
                'assets/spiderman2.png',
                width: 500,
                height: 150,
              ),
            ),
            // Campos de Texto para agregar producto (ID, Nombre, Cantidad, Precio, Categoría)
            _buildTextField(
                idController, EvaIcons.barChart, 'Código o ID del Producto'),
            _buildTextField(nombreController, EvaIcons.pricetagsOutline,
                'Nombre del Producto'),
            _buildTextField(
                cantidadController, EvaIcons.hash, 'Cantidad de Productos'),
            _buildTextField(precioController, EvaIcons.pricetags, 'Precio'),
            _buildTextField(categoriaController, EvaIcons.grid, 'Categoría'),
            SizedBox(height: 20),
            // Botón para agregar producto
            _buildAgregarProductoButton(),
            // Listado de productos
            _buildProductosList(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.red),
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
        ),
      ),
    );
  }

  Widget _buildAgregarProductoButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
      child: ElevatedButton.icon(
        onPressed: () {
          String id = idController.text;
          String nombre = nombreController.text;
          String cantidad = cantidadController.text;
          String precio = precioController.text;
          String categoria = categoriaController.text;
          controller.Agregar_Producto(id, nombre, cantidad, precio, categoria);
          setState(() {});
        },
        icon: Icon(Icons.addchart_outlined, color: Colors.black),
        label: Text('Agregar Producto', style: TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(
          primary: Colors.red[200],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
      ),
    );
  }

  Widget _buildProductosList() {
    // Asumiendo que control.optenerProducto() retorna una List<Producto>
    // Deberías usar ListView.builder si la lista es muy larga o los datos vienen de manera asincrónica.
    return ListView.builder(
      shrinkWrap: true,
      itemCount: control.optenerProducto().length,
      itemBuilder: (context, index) {
        final producto = control.optenerProducto()[index];
        return ListTile(
          title: Text(producto.nombre),
          subtitle: Text("Id: ${producto.id} Precio: ${producto.precio}"),
          leading: CircleAvatar(
            backgroundColor: Colors.red[200],
            child: Text(producto.nombre.substring(0, 1)),
          ),
          trailing: _buildEliminarProductoButton(producto.id),
        );
      },
    );
  }

  Widget _buildEliminarProductoButton(String productoId) {
    return ElevatedButton.icon(
      onPressed: () {
        _mostrarDialogoEliminar(context, productoId);
      },
      icon: Icon(EvaIcons.trash2Outline, color: Colors.black),
      label: Text(''),
      style: ElevatedButton.styleFrom(
        primary: Colors.red[200],
        shape: CircleBorder(),
      ),
    );
  }

  void _mostrarDialogoEliminar(BuildContext context, String productoId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Eliminar Producto"),
        content: Text("¿Estás seguro de que quieres eliminar este producto?"),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancelar"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Borrar", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
