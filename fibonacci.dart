main(){

  // Caso queira receber os valores iniciais do usuário, alterar apenas valorInicial 1 e 2
  var valorInicial1 = 0;
  var valorInicial2 = 1;

  print('Print de fibonacci iniciando com $valorInicial1 e $valorInicial2:');

  print(valorInicial1);
  print(valorInicial2);
  fibonacci(primeiroValor: valorInicial1, segundoValor: valorInicial2);

}

void fibonacci({required int primeiroValor, required int segundoValor}){

  int soma = primeiroValor + segundoValor;

  print(soma);

  if(soma < 9000){
    fibonacci(primeiroValor: segundoValor, segundoValor: soma);
  }
  
}