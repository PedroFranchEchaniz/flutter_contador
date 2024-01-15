import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/contadorWidget/contador.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://a4.espncdn.com/combiner/i?img=%2Fi%2Fespn%2Fmisc_logos%2F500%2Fnba.png',
            ),
            const Contador()
          ],
        ),
      ),
    );
  }
}
