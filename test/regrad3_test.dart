import 'package:playground/regrad3.dart';
import 'package:test/test.dart';

void main() {
  test('valor2 é nulo, valor1, quantidade1 e quantidade2 deve retornar 10', () {
    double resultado2 = regradeTresSimples(
      valor1: 5,
      valor2: null,
      quantidade1: 2,
      quantidade2: 4,
    );
    expect(resultado2, 10);
  });

  test(
      "quantidade1 é nulo, valor1, valor2 e quantidade2 são fornecidos deve retornar 2",
      () {
    double resultado3 = regradeTresSimples(
      valor1: 5,
      valor2: 10,
      quantidade1: null,
      quantidade2: 4,
    );
    expect(resultado3, 2);
  });

  test(
      "quantidade2 é nulo, valor1, valor2 e quantidade1 são fornecidos deve retornar 1",
      () {
    double resultado4 = regradeTresSimples(
      valor1: 5,
      valor2: 10,
      quantidade1: 2,
      quantidade2: null,
    );
    expect(resultado4, 1);
  });

  test('Mais de um valor é null Deve retornar Exception Argument', () {
    expect(
      () => regradeTresSimples(
        valor1: null,
        valor2: null,
        quantidade1: 2,
        quantidade2: null,
      ),
      throwsArgumentError,
    );
  });
}
