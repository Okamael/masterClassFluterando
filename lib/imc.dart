import 'dart:io';

enum ImcType { MAGREZA, NORMAL, SOBREPESO, OBESIDADE, OBESIDADEGRAVE }

void main(List<String> args) {
  print("Calculo imc");

  print("Por favor digite sua altura");
  String? altura = stdin.readLineSync();

  print("Por favor digite sua peso");
  String? peso = stdin.readLineSync();

  double imc = calculaImc(double.parse(altura!), double.parse(peso!));
  resultImc(imc);
}

double calculaImc(double altura, double peso) {
  return peso / (altura * altura);
}

resultImc(double imc) {
  print("Seu Imc foi de ${imc}\n");
  ImcType? tipomc;
  if (imc <= 18.5) {
    tipomc = ImcType.MAGREZA;
  } else if (imc > 18.5 && imc <= 24.9) {
    tipomc = ImcType.NORMAL;
  } else if (imc >= 25 && imc <= 29.9) {
    tipomc = ImcType.SOBREPESO;
  } else if (imc >= 30 && imc <= 39.9) {
    tipomc = ImcType.OBESIDADE;
  } else if (imc >= 40) {
    tipomc = ImcType.OBESIDADEGRAVE;
  }

  print("Você foi classifcado como:${tipomc}");
}
