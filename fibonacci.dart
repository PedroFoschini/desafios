main(){

  // Caso queira receber os valores iniciais do usuário, alterar apenas valorInicial 1 e 2
  var valorInicial1 = 0;
  var valorInicial2 = 1;

  print('Fibonacci iniciando com $valorInicial1 e $valorInicial2:');

  fibonacci(primeiroValor: valorInicial1, segundoValor: valorInicial2);

}

void fibonacci({required int primeiroValor, required int segundoValor, bool executou = false}){

  int soma = primeiroValor + segundoValor;

  if(!executou){
    print(primeiroValor);
    print(segundoValor);
  }

  print(soma);

  // if apenas para limitar a quantidade de repetições
  if(soma < 9000){
    fibonacci(primeiroValor: segundoValor, segundoValor: soma, executou: true);
  }
  
}
