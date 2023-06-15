import 'dart:io';

main() {
  bool tamanhoInvalido = true;

  print('Bem-vindo ao validador de CPF!');

  while (tamanhoInvalido) {
    print('Informe apenas os números do CPF que deseja validar: ');
    String cpfInformado = stdin.readLineSync().toString();
    if (cpfInformado.length == 11) {
      var instanciaCpf = ValidaCpf(cpf: cpfInformado);
      print('');
      print(instanciaCpf.validarCompleto() ? 'CPF válido!' : 'CPF inválido!');
      tamanhoInvalido = false;
    } else{
      print('Tamanho inválido, tente novamente!');
    }
  }

  print('');
  print('Fim do programa!');
}

class ValidaCpf {
  String cpf;

  ValidaCpf({required this.cpf});

  bool validarPrimeiroDigito() {
    var primeiroDigito = int.parse(cpf[9]);
    var multiplicador = 2;
    var somatoria = 0;

    for (var i = 8; i >= 0; i--) {
      var char = int.parse(cpf[i]);
      somatoria += char * multiplicador;
      multiplicador++;
    }

    return resultado(somatoria, primeiroDigito);
  }

  bool validarSegundoDigito() {
    var segundoDigito = int.parse(cpf[10]);
    var multiplicador = 2;
    var somatoria = 0;

    for (var i = 9; i >= 0; i--) {
      var char = int.parse(cpf[i]);
      somatoria += char * multiplicador;
      multiplicador++;
    }

    return resultado(somatoria, segundoDigito);
  }

  bool resultado(int soma, int digito) {
    if (soma % 11 < 2 && digito == 0) {
      return true;
    } else if (soma % 11 >= 2 && digito == (11 - (soma % 11))) {
      return true;
    } else {
      return false;
    }
  }

  bool validarCompleto() {
    if (validarPrimeiroDigito() && validarSegundoDigito()) {
      return true;
    } else {
      return false;
    }
  }
}
