import 'dart:io';

void main() {
  print("Digite o valor 1");

  double valor1 = double.parse(stdin.readLineSync()!);
  print("Digite o quantidade 1");
  double quantidade1 = double.parse(stdin.readLineSync()!);
  print("Digite o valor 2");
  double valor2 = double.parse(stdin.readLineSync()!);
  double quantidade2;
  print('Digita 2° quantidade ?');
  print("digite yes para insierir ou não para seguir com o calculo");
  var confirm = stdin.readLineSync();

  if (confirm == 'yes') {
    quantidade2 = double.parse(stdin.readLineSync()!);
  }
  print(regradeTresSimples(
    valor1: valor1,
    valor2: valor2,
    quantidade1: quantidade1,
  ));
}

double regradeTresSimples({
  double? valor1,
  double? valor2,
  double? quantidade1,
  double? quantidade2,
}) {
  if (valor1 == null &&
      valor2 != null &&
      quantidade1 != null &&
      quantidade2 != null) {
    return (valor2 * quantidade1) / quantidade2;
  } else if (valor2 == null &&
      valor1 != null &&
      quantidade1 != null &&
      quantidade2 != null) {
    return (valor1 * quantidade2) / quantidade1;
  } else if (quantidade1 == null &&
      valor1 != null &&
      valor2 != null &&
      quantidade2 != null) {
    return (valor2 * (quantidade1 ?? 1)) / valor1;
  } else if (quantidade2 == null &&
      valor1 != null &&
      valor2 != null &&
      quantidade1 != null) {
    quantidade2 = 1; // Valor padrão quando quantidade2 é nulo
    return (valor2 * quantidade2) / valor2;
  }
  throw ArgumentError("Apenas um valor deve ser nulo.");
}
