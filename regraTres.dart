import 'dart:io';

main() {

  print('## Calculadora de regra de 3 simples ##');
  print('Informe o primeiro valor da relação conhecida');
  var primeiraResposta = stdin.readLineSync();

  print('Informe o segundo valor da relação conhecida');
  var segundaResposta = stdin.readLineSync();

  print('Informe o primeiro valor da relação desconhecida');
  var terceiraResposta = stdin.readLineSync();

  print('A relação é diretamente proporcional? Digite S/N');
  var quartaResposta = stdin.readLineSync();

  var r1;
  if(primeiraResposta is String && primeiraResposta.length > 0){
    r1 = double.parse(primeiraResposta);
  } else{
    r1 = 0;
  }

  var r2;
  if(segundaResposta is String && segundaResposta.length > 0){
    r2 = double.parse(segundaResposta);
  } else{
    r2 = 0;
  }

  var r3;
  if(terceiraResposta is String && terceiraResposta.length > 0){
    r3 = double.parse(terceiraResposta);
  } else{
    r3 = 0;
  }

  var r4;
  if(quartaResposta is String && quartaResposta.length > 0 && quartaResposta == 'S'){
    r4 = true;
  } else{
    r4 = false;
  }

  

  regraTres(primeiroParam: r1, segundoParam: r2, terceiroParam: r3, diretamente: r4);

}

void regraTres(
    {required num primeiroParam,
    required num segundoParam,
    required num terceiroParam,
    required bool diretamente}) {
  var relacaoConhecida;
  var resultado;
  // caso diretamente proporcional
  if (diretamente) {
    relacaoConhecida = segundoParam * terceiroParam;
    resultado = relacaoConhecida / primeiroParam;
    print(resultado);
  } else {
    // caso inversamente proporcional
    relacaoConhecida = primeiroParam * segundoParam;
    resultado = relacaoConhecida / terceiroParam;
    print(resultado);
  }
}
