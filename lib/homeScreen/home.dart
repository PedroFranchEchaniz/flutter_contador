import 'package:flutter/material.dart';
import 'package:flutter_application_4/contadorWidget/contador.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          children: [Contador()],
        ),
      ),
    );
  }
}
