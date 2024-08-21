import 'package:flutter/material.dart';
import 'package:rastrobus/componentes/mapa.dart';

class RotasPrevistasPage extends StatelessWidget {
  const RotasPrevistasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final listHeight = screenSize.height * 0.3;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotas previstas do Ônibus"),
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
      body: Column(
        children: [
          const Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Mapa(),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: listHeight,
            child: Container(
              color: Colors.green[200],
            ),
          ),
        ],
      ),
    );
  }
}
