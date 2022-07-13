void main() {
  //Definición de una lista
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  numeros.add(11);

  print(numeros[0]);

  //Generamos una lista
  final otrosNumeros = List.generate(100, (int index) => 10);
  print(otrosNumeros);
}
