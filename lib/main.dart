// Importamos el paquete de Flutter que nos permite crear interfaces de usuario
import 'package:flutter/material.dart';

// Esta es la función principal que inicia nuestra aplicación
void main() {
  runApp(const MiAplicacion());
}

// Esta es la clase principal de nuestra aplicación
class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Título de la aplicación
      title: 'Mi Contador',
      // Configuramos el tema de la aplicación
      theme: ThemeData(
        // Color principal de la aplicación
        primarySwatch: Colors.blue,
      ),
      // La página principal que se mostrará
      home: const PaginaPrincipal(),
    );
  }
}

// Esta es la página principal de nuestra aplicación
class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

// Esta clase que maneja el estado de nuestra página principal
class _PaginaPrincipalState extends State<PaginaPrincipal> {
  // Variable que guarda el número de clicks
  int contador = 0;

  // Función para aumentar el contador
  void aumentar() {
    setState(() {
      contador = contador + 1;
    });
  }

  // Función para disminuir el contador
  void disminuir() {
    setState(() {
      // Solo disminuimos si el contador es mayor que 0
      if (contador > 0) {
        contador = contador - 1;
      }
    });
  }

  // Función para reiniciar el contador
  void reiniciar() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior de la aplicación
      appBar: AppBar(
        title: const Text('Mi Contador'),
        backgroundColor: Colors.blue,
      ),
      // Cuerpo principal de la aplicación
      body: Center(
        child: Column(
          // Centramos los elementos verticalmente
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Mostramos el número de clicks
            Text(
              '$contador clicks',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Espacio entre el texto y los botones
            const SizedBox(height: 30),
            // Fila de botones
            Row(
              // Centramos los botones horizontalmente
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botón para disminuir
                ElevatedButton(
                  onPressed: disminuir,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // Espacio entre botones
                const SizedBox(width: 20),
                // Botón para reiniciar
                ElevatedButton(
                  onPressed: reiniciar,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    'Reiniciar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // Espacio entre botones
                const SizedBox(width: 20),
                // Botón para aumentar
                ElevatedButton(
                  onPressed: aumentar,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 20),
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
