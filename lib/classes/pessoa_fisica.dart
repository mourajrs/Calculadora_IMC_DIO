import 'pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  PessoaFisica(String nome, double altura, double peso, String cpf)
      : super(
          nome,
          altura,
          peso,
        ) {
    _cpf = cpf;
  }

  getCpf() {
    return _cpf;
  }

  setCpf(String cpf) {
    _cpf = cpf;
  }
}
