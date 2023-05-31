main(){

  // Caso queira receber os valores iniciais do usuário, alterar apenas valorInicial 1 e 2
  var valorInicial1 = 0;
  var valorInicial2 = 1;

  print('Print de fibonacci iniciando com $valorInicial1 e $valorInicial2:');

  fibonacci(primeiroValor: valorInicial1, segundoValor: valorInicial2, jaExecutou: false);

}

void fibonacci({required int primeiroValor, required int segundoValor, required bool jaExecutou}){

  int soma = primeiroValor + segundoValor;

  if(!jaExecutou){
    print(primeiroValor);
    print(segundoValor);
  }

  print(soma);

  if(soma < 9000){
    fibonacci(primeiroValor: segundoValor, segundoValor: soma, jaExecutou: true);
  }
  
}