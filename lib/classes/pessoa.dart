import 'dart:math' as math;

abstract class Pessoa {
  String _nome = "";
  double _altura = 0;
  double _peso = 0;

  Pessoa(String nome, double altura, double peso) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  getNome() {
    return _nome;
  }

  setNome(String nome) {
    _nome = nome;
  }

  getAltura() {
    return _altura;
  }

  setAltura(double altura) {
    _altura;
  }

  getPeso() {
    return _peso;
  }

  setPeso(double peso) {
    _peso;
  }

  get calculaImc {
    var result = _peso / math.pow(_altura, 2);
    result = result * 100;
    var val = result.roundToDouble() / 100;
    return val;
  }

  get classificacao {
    var valor = calculaImc;

    switch (valor) {
      case < 16:
        return 'Magreza grave';
      case > 16 && < 17:
        return 'Magreza moderada';
      case > 17 && < 18.5:
        return 'Magreza leve';
      case > 18.5 && < 25:
        return 'Saudável';
      case > 25 && < 30:
        return 'Sobrepeso';
      case > 30 && < 35:
        return 'Obesidade Grau 1';
      case > 35 && < 40:
        return 'Obesidade Grau 2 (Severa)';
      case > 40:
        return 'Obesidade Grau 3 (mórbida)';
      default:
    }
  }
}
