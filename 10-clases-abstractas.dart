void main(List<String> args) {
  final perro = new Perro();
  final gato = new Gato();

  // Tendremos lo mismo en ambos
  perro.emitirSonido();
  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

// Métodos de una línea con flecha
void sonidoAnimal(Animal animal) => animal.emitirSonido();

// Clase abstracta
abstract class Animal {
  int? patas;

  void emitirSonido();
}

// Clase normal
class Perro implements Animal {
  // Debemos implementar todo lo que está definido en la clase abstracta
  // o nos dará error
  int? patas;

  void emitirSonido() => print('Guau');
}

class Gato implements Animal {
  int? patas;
  int? cola;

  void emitirSonido() => print('Miau');
}
