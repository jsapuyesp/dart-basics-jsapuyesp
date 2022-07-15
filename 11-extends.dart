void main(List<String> args) {
  // Esto no es permitido
  //final superman = new Personaje('Clark Kent');

  final superman = new Heroe('Clark Kent');
  final luthor = new Villano('Lex Luthor');

  print(superman);
  print(luthor);
}

abstract class Personaje {
  String? poder;
  String nombre;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;

  /* 
    Al hacer el extends debo definir en mi clase también el
    constructor que tengo definido en mi clase abstracta.

    Pero a su vez debo inicializar mi constructor y el constructor 
    de la clase padre, por eso invocamos el método super() y
    enviamos como argumento las propiedades que debo inicializar en 
    mi clase padre.
  */
  Heroe(String nombre) : super(nombre);
}

class Villano extends Personaje {
  int maldad = 50;

  Villano(String nombre) : super(nombre);
}
