main(){

  print('Print de fibonacci iniciando com 0 e 1:');

  print('0');
  print('1');
  fibonacci(primeiroValor: 0, segundoValor: 1);

}

void fibonacci({required int primeiroValor, required int segundoValor}){

  int soma = primeiroValor + segundoValor;

  print(soma);

  fibonacci(primeiroValor: segundoValor, segundoValor: soma);
}