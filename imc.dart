
main(){
  print(calculaImc(altura: 1.80, peso: 80));
}

double calculaImc({required double altura, required double peso}){
  return peso / (altura * altura);
}