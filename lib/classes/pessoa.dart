
class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;
  double _imc = 0;

  Pessoa(this._nome, this._peso, this._altura);

  String? get nome => _nome;
  double? get peso => _peso;
  double? get altura => _altura;
  double get imc => _imc;

  set nome(String nome) {
    _nome = nome;
  }

  set pesp(double peso) {
    _peso = peso;
  }

  set altura(double altura) {
    _altura = altura;
  }

  set imc(double imc) {
    _imc = imc;
  }

  double calcularIMC(double peso, double altura) {
    var imc = peso / (altura * altura);
    return imc;
  }
}
