import 'package:calculadora_imc_dio/classes/pessoa_fisica.dart';
import 'package:test/test.dart';

void main() {
  final pessoa = PessoaFisica('Mouraa', 1.75, 95, '321456481');

  test('IMC deve ser igual a 31.02', () {
    expect(pessoa.calculaImc, 31.02);
  });

  test('classificação deve ser Obesidade Grau 1', () {
    expect(pessoa.classificacao, 'Obesidade Grau 1');
  });

  group('Retorna classificação do IMC', () {
    var valuesToTest = {
      {'nome': 'Moura', 'altura': 1.75, 'peso': 40, 'cpf': '03654635651'}: "Magreza grave",
      {'nome': 'João', 'altura': 1.75, 'peso': 50, 'cpf': '03654635651'}: "Magreza moderada",
      {'nome': 'Mané', 'altura': 1.75, 'peso': 55, 'cpf': '03654635651'}: "Magreza leve",
      {'nome': 'Paula', 'altura': 1.75, 'peso': 60, 'cpf': '03654635651'}: "Saudável",
      {'nome': 'Baptista', 'altura': 1.75, 'peso': 78, 'cpf': '03654635651'}: "Sobrepeso",
      {'nome': 'Higor 3k', 'altura': 1.75, 'peso': 95, 'cpf': '03654635651'}: "Obesidade Grau 1",
      {'nome': 'Acreano', 'altura': 1.75, 'peso': 110, 'cpf': '03654635651'}: "Obesidade Grau 2 (Severa)",
      {'nome': 'Motosserra', 'altura': 1.75, 'peso': 130, 'cpf': '03654635651'}: "Obesidade Grau 3 (mórbida)",
    };

    valuesToTest.forEach((values, expected) {
      var nome = values['nome'];
      var altura = double.parse(values['altura'].toString());
      var peso = double.parse(values['peso'].toString());
      var cpf = values['cpf'];

      final pessoaF = PessoaFisica("$nome", altura, peso, "$cpf");

      test('Entrada: $values Esperado: $expected', () {
        expect(pessoaF.classificacao, equals(expected));
      });
    });
  });
}
