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
        child: Row(
          children: [
            Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _result = _result + 2;
                    });
                  },
                  child: const Text('Local'),
                ),
                Text('$_result')
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
                  child: const Text('visitante'),
                ),
                Text('$_result2')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
