import 'package:flutter/material.dart';
import 'package:rastrobus/entidade/rotasprevistas.dart';

class RotasprevistasItem extends StatelessWidget {
  final RotasPrevistas rotasprevistas;

  const RotasprevistasItem({
    super.key,
    required this.rotasprevistas,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: const SingleChildScrollView(
        child: Material(
          elevation: 3,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF54AE33),
                    child: Text(
                      '54',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 16.0), // Espaçamento entre a bola e o texto
                  Expanded(
                    child: Text(
                      'Av. Odone Marchesan, 1234',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      overflow: TextOverflow
                          .ellipsis, // Para truncar o texto se for muito longo
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
