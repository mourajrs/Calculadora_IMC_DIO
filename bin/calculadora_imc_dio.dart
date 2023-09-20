import 'package:calculadora_imc_dio/classes/console_utils.dart';
import 'package:calculadora_imc_dio/classes/pessoa_fisica.dart';

void main(List<String> arguments) {
  var nome = ConsoleUtils.lerStringComTexto('Digite seu nome: ');
  var altura = ConsoleUtils.lerDoubleComTexto('Digite sua altura: ');
  var peso = ConsoleUtils.lerDoubleComTexto('Digite seu peso: ');
  var cpf = ConsoleUtils.lerStringComTexto('Digite seu cpf: ');

  var pessoaFisica = PessoaFisica(nome, altura, peso, cpf);

  var resultado = pessoaFisica.classificacao;

  print(resultado);
}
