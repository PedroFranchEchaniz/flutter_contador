import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Contador> {
  int _result = 0;
  int _result2 = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        // Añade un relleno alrededor del Row
        padding: const EdgeInsets.all(10.0),
        // Usa BoxDecoration para crear un borde
        decoration: BoxDecoration(
          // El color y el ancho del borde
          border: Border.all(color: Colors.blue, width: 3.0),
          // El radio de las esquinas del borde
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          // Usa mainAxisAlignment para alinear los hijos horizontalmente
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _result = _result + 1;
                    });
                  },
                  child: const Text('Tiro libre'),
                ),
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _result = _result + 2;
                    });
                  },
                  child: const Text('Tiro'),
                ),
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _result = _result + 3;
                    });
                  },
                  child: const Text('Triple'),
                ),
              ],
            ),
            // Añade un widget Row para los textos
            Row(
              // Añade la propiedad mainAxisAlignment
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Usa una expresión condicional para el color del texto
                Text('$_result',
                    style: TextStyle(
                        color: _result > _result2 ? Colors.green : Colors.red,
                        fontSize: 20)),
                // Añade un widget SizedBox entre los textos
                SizedBox(width: 20),
                Text('$_result2',
                    style: TextStyle(
                        color: _result2 > _result ? Colors.green : Colors.red,
                        fontSize: 20)),
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _result2 = _result2 + 1;
                    });
                  },
                  child: const Text('Tiro libre'),
                ),
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _result2 = _result2 + 2;
                    });
                  },
                  child: const Text('Tiro'),
                ),
              ],
            ),
            Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _result2 = _result2 + 3;
                    });
                  },
                  child: const Text('Triple'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
