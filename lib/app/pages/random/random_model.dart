class RandomModel {
  int _value = 0;

  String _par = 'Par';
  String _impar = 'Impar';
  bool _isPar = true;

  // ? Função para retornar outra função, Closure
  void randomNumber(Function(int) onFunction) {
    _value = onFunction(_value);
  }

  // Metodo especial para retornar variaveis privada
  int get value {
    return _value;
  }

  // Usando retorno com arrow function => "return _par"
  String get par => _par;

  String get impar => _impar;

  bool get isPar {
    return _isPar;
  }

  // Metodo para setar novos valores a variavel
  set setIsPar(bool value) {
    _isPar = value;
  }

  set setValue(int value) {
    _value = value;
  }
}
