import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 25,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    int contador = 0;

    return Scaffold(
        appBar: AppBar(
          //Barra de arriba de la app
          title: const Text('Counter App'),
          centerTitle: true, //Centra el texto de la barra
          elevation: 5.2, //sombra de la barra
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
        ),
        backgroundColor: Colors.greenAccent,
        body: Center(
            child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //agarra la columna y la centra toda
          children: [
            Text(
              'Numero de Taps:',
              style: estiloTexto,
            ),
            Text(
              '0',
              style: estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            contador++;
            print('Tocaste el boton: $contador');

            //Error porque la clase statelessWidget solo trabaja con variables const y final y el contador es cambiante
          },
          backgroundColor: const Color.fromARGB(255, 3, 21, 53),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.add),
        ));
  }
}
