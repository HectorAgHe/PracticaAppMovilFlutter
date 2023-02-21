import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 134, 55, 81),
    fontWeight: FontWeight.bold,
  );
  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reiniciar() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Barra de arriba de la app
        title: const Text('Counter App'),
        centerTitle: true, //Centra el texto de la barra
        elevation: 10.2, //sombra de la barra
        backgroundColor: const Color.fromARGB(255, 162, 48, 128),
      ),
      backgroundColor: const Color.fromARGB(255, 85, 12, 63),
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
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        decrease: decrementar,
        increase: incrementar,
        reset: reiniciar,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const CustomFloatingActionButton({
    super.key,
    required this.increase,
    required this.decrease,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          //Widget y propiedad del boton
          onPressed: () => decrease(),
          backgroundColor: const Color.fromARGB(255, 237, 152, 185),
          foregroundColor: const Color.fromARGB(255, 250, 15, 78),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          //Widget y propiedad del boton
          onPressed: () => reset(),
          backgroundColor: const Color.fromARGB(255, 237, 152, 185),
          foregroundColor: const Color.fromARGB(255, 250, 15, 78),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          //Widget y propiedad del boton
          onPressed: () => increase(),
          backgroundColor: const Color.fromARGB(255, 237, 152, 185),
          foregroundColor: const Color.fromARGB(255, 250, 15, 78),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
