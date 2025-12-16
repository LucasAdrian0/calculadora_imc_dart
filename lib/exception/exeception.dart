class NomeInvalidoExeception implements Exception {
  String error() => "Nome Inválido";

  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}
