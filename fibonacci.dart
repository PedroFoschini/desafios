import 'dart:io';

main(){

  // Obter valores do usuário, se forem inválidos utiliza valores default

  print('Informe o primeiro número inteiro da sequência: ');
  var valorInicial1 = stdin.readLineSync();

  print('Informe o segundo número inteiro da sequência: ');
  var valorInicial2 = stdin.readLineSync();

  print('Informe o número de repetições da sequência: ');
  var stringRepeticoes = stdin.readLineSync();

  int n1;
  int n2;
  int reps;

  if(valorInicial1 is String && valorInicial1.length > 0){
    n1 = int.parse(valorInicial1);
  } else {
    n1 = 0;
  }

  if(valorInicial2 is String && valorInicial2.length > 0){
    n2 = int.parse(valorInicial2);
  } else {
    n2 = 1;
  }

  if(stringRepeticoes is String && stringRepeticoes.length > 0){
    reps = int.parse(stringRepeticoes);
  } else {
    reps = 10;
  }
  
  print('Fibonacci iniciando com $n1 e $n2:');

  fibonacci(primeiroValor: n1, segundoValor: n2, repeticoes: reps);

}

void fibonacci({int primeiroValor = 0, int segundoValor = 1, bool executou = false, int repeticoes = 10}){

  if(!executou){
    print(primeiroValor);
    print(segundoValor);
  }
  
  int soma = primeiroValor + segundoValor;

  print(soma);

  if(repeticoes > 1){
    fibonacci(primeiroValor: segundoValor, segundoValor: soma, executou: true, repeticoes: --repeticoes);
  }
  
}