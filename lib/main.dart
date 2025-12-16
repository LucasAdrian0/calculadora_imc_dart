import 'package:calculadora_imc_dart/classes/pessoa.dart';
import 'package:calculadora_imc_dart/models/console_utils.dart';

void execute() {
  print("Calculadora IMC");

  String nome = ConsoleUtils.lerStringComTexto("Digite seu nome: ");
  try {
    if (nome.trim() == "") {
      throw Exception("Nome Invalido");
    }
    // ignore: non_constant_identifier_names
  } catch (e) {
    nome = "Nome Padrão";
    print(e);
  }

  var peso = ConsoleUtils.lerDouble("Digite seu peso: ");

  var altura = ConsoleUtils.lerDouble("Digite sua altura: ");

  if (peso == null || altura == null) {
    print("Entrada inválida para peso ou altura.");
    return;
  }

  var pessoa = Pessoa(nome, peso, altura);
  pessoa.imc = pessoa.calcularIMC(peso, altura);

  print("IMC: ${pessoa.imc}");
}
