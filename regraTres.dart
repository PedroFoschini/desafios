import 'dart:io';

main() {

  print('## Calculadora de regra de 3 simples ##');
  print('Informe o primeiro valor da relação conhecida');
  var primeiraResposta = stdin.readLineSync();

  print('Informe o segundo valor da relação conhecida');
  var segundaResposta = stdin.readLineSync();

  print('Informe o primeiro valor da relação desconhecida');
  var terceiraResposta = stdin.readLineSync();

  var quartaResposta;
  var repetir = true;
  while(repetir){
    print('A relação é diretamente proporcional? Digite S/N');
    quartaResposta = stdin.readLineSync()!;
    if(quartaResposta.toUpperCase() == 'N'){
      repetir = false;
    } else if(quartaResposta.toUpperCase() == 'S'){
      repetir = false;
    }
  };

  var r1;
  if(primeiraResposta is String && primeiraResposta.length > 0){
    r1 = double.parse(primeiraResposta);
  }

  var r2;
  if(segundaResposta is String && segundaResposta.length > 0){
    r2 = double.parse(segundaResposta);
  }

  var r3;
  if(terceiraResposta is String && terceiraResposta.length > 0){
    r3 = double.parse(terceiraResposta);
  }

  var r4;
  if(quartaResposta.toUpperCase() == 'S'){
    r4 = true;
  } else{
    r4 = false;
  }

  try{
    print(regraTres(primeiroParam: r1, segundoParam: r2, terceiroParam: r3, diretamente: r4));
  } catch (Exception){
    print(Exception);
  }

}

double regraTres(
    {num? primeiroParam,
    num? segundoParam,
    num? terceiroParam,
    bool diretamente = true}) {
  var relacaoConhecida;
  var resultado;

  if(primeiroParam == null || segundoParam == null || terceiroParam == null){
    throw Exception('São necessários 3 valores para utilizar a regra de três!!!');
  }

  // caso diretamente proporcional
  if (diretamente) {
    relacaoConhecida = segundoParam * terceiroParam;
    resultado = relacaoConhecida / primeiroParam;
    return resultado;
  } else {
    // caso inversamente proporcional
    relacaoConhecida = primeiroParam * segundoParam;
    resultado = relacaoConhecida / terceiroParam;
    return resultado;
  }
}
