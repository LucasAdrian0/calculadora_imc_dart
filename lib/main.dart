import 'package:calculadora_imc_dart/classes/pessoa.dart';
import 'package:calculadora_imc_dart/models/console_utils.dart';

void main() {
  print("Calculadora IMC");

  String nome = ConsoleUtils.lerStringComTexto("Digite seu nome: ");

  if (nome.trim().isEmpty) {
    nome = "Nome Padrão";
    print("Nome inválido, usando nome padrão.");
  }

  double? peso = ConsoleUtils.lerDouble("Digite seu peso: ");

  double? altura = ConsoleUtils.lerDouble("Digite sua altura: ");

  if (peso == null || altura == null) {
    print("Entrada inválida para peso ou altura.");
    return;
  }

  var pessoa = Pessoa(nome, peso, altura);
  pessoa.imc = pessoa.calcularIMC(peso, altura);

  print(pessoa);
  print("IMC: ${pessoa.imc}");
}
