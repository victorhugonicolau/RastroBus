import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:rastrobus/entidade/rotasprevistas.dart';
import 'package:rastrobus/repositorio/repositorio_rotasprevistas.dart';

class RotasPrevistasVIewModel extends ChangeNotifier {
  late List<RotasPrevistas> rotasprevistas;

  RotasPrevistasVIewModel useLista(List<RotasPrevistas> rotasprevistas) {
    this.rotasprevistas = rotasprevistas;
    notifyListeners();
    return this;
  }

  static ChangeNotifierProvider<RotasPrevistasVIewModel> novo() =>
      ChangeNotifierProvider(
        create: (_) => RotasPrevistasVIewModel().useLista(
          RepositorioRotasprevistas().select(),
        ),
      );
}
