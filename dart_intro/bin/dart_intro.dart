// Top-level attribute
import 'dart:math';

int variavel = 42;

/// Esta função foi criada apenas para definição de conceitos.
void minhaFuncaoTopLevel() {
  print('executei a função minhaFuncaoTopLevel()');
}

// Comentario de linha única
// O main é nosso Trigger da aplicação
/// Esta é a função principal da aplicação; o entry-point do projeto.
void main(List<String> arguments) {
  print('Hello world!');

  /* O Dart suporta top-levels functions e atributos */
  print(variavel);
  minhaFuncaoTopLevel();

  //TODO: Variaveis
  var a = 10;
  print('a($a) é do tipo ${a.runtimeType}');
  var b = 10.0;
  print('b($b) é do tipo ${b.runtimeType}');

  num c = 10.99;
  print('c($c) é do tipo ${c.runtimeType}');

  print('11 é par? ${11.isEven}');

  //TODO: Constantes
  const String nome = 'Enzo';

  final dataTime = DateTime.now();

  var numeroDaSorte = getNumeroDaSorte(1000);
  print(numeroDaSorte);
  funcaoComParametrosNomeados(40, p3: 100);

  final fullName = getFullName(
    'Caroline',
    lastName: 'Vantin',
    midleName: 'Batista',
  );

  print(fullName);

  var botao = Botao(
    titulo: 'Salvar',
    aoPressionar: getNumeroDaSorte,
  );
}

// Funçoes em Dart
int getNumeroDaSorte([int fim = 10]) {
  int numeroDaSorte = Random().nextInt(fim) + 1;
  return numeroDaSorte;
}

void funcaoComParametrosNomeados(int p1, {int? p2, int? p3}) {
  print('p1: $p1\np2: $p2\np3: $p3');
}

String getFullName(
  String firstName, {
  String midleName = '',
  required String? lastName,
}) {
  return '$lastName, $firstName $midleName';
}

class Botao {
  final String titulo;
  Function(int x) aoPressionar;

  Botao({
    required this.titulo,
    required this.aoPressionar,
  });
}
