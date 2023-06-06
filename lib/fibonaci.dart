import 'dart:io';

void main(List<String> args) {
  print('Digite o numero de vezes que deseja que seja executado o algoritimo');
  String? numeroRepeticao = stdin.readLineSync();
  print("O resultado da fibonacci é ${fibo(int.parse(numeroRepeticao!))}");
}

int fibo(int numRepeticao) {
  if (numRepeticao <= 0) {
    throw 'Não é permitido numeros iguais a zero ou negativo';
  }
  if (numRepeticao == 1 || numRepeticao == 2) {
    return 1;
  }
  int fibNMinus1 = 1;
  int fibNMinus2 = 1;
  int fibN = 0;
  for (int i = 3; i <= numRepeticao; i++) {
    fibN = fibNMinus1 + fibNMinus2;
    fibNMinus2 = fibNMinus1;
    fibNMinus1 = fibN;
    print(fibN);
  }

  return fibN;
}
