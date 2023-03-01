import 'package:flutter/material.dart';

class Multiplicador extends StatelessWidget {
  Multiplicador({super.key});
  //TextEditingController el campo de texto actualiza el valor y notifica a sus oyentes
  // se usa ya que n1 y n2 van a cambiar su valor en el campo depende al usuario
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  //variales que van a recibir los valores de los controladores n1 y n2
  String numero1 = '';
  String numero2 = '';
  double multiplicacion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(child: Text('Calculadoreishon')),
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Ingresa los numeros que deseas multiplicar'),
              TextField(
                controller: n1,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.yellow),
                ),
              ),
              TextField(
                controller: n2,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 167, 206, 237)),
                ),
              ),
              Text('Preciona el icono de alarma para ver el resultado'),
              Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeIagHc6Ab-BoOiU27NlTyZRz47WJmOR4ebw&usqp=CAU'),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //asignamos el valor del controlador n1 y n2 a unas variables
          numero1 = n1.text;
          numero2 = n2.text;

          if (numero1 == '' || numero2 == '') {
            /*          showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: const Text('error'),
                      content: Text('ingresa los datos que se te piden'));
                });*/
          } else {
            multiplicacion = double.parse(numero1) * double.parse(numero2);
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: const Text('Resultado de tu Operacion'),
                      content: Text('El resultado es: $multiplicacion'));
                });
          }
        },
        child: const Icon(Icons.alarm),
      ),
    );
  }
}
