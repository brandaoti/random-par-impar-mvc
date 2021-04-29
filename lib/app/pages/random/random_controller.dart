import 'dart:math';

import 'random_model.dart';

class RandomController {
  // ? Instancia da classe model
  final model = RandomModel();

  String get value {
    return model.value.toString();
  }

  String get dataPar {
    return model.par;
  }

  String get dataImpar {
    return model.impar;
  }

  bool get isPar {
    return model.isPar;
  }

  // ? Responsavel por ativar a função closure...
  void randomActive() {
    model.randomNumber(_restart);
  }

  // Função para reinciar o random
  int _restart(int value) {
    final random = Random();

    model.setValue = random.nextInt(1000);
    model.value % 2 == 0 ? model.setIsPar = true : model.setIsPar = false;

    value = model.value;

    return value;
  }
}
