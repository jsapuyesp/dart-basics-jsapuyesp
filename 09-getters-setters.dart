// Importación de un paquete
import 'dart:math' as math;

void main(List<String> args) {
  final cuadrado = new Cuadrado(5);

  cuadrado.area = 100;

  print('area: ${cuadrado.lado * cuadrado.lado}');

  print('lado: ${cuadrado.lado}');

  print('get: ${cuadrado.area}');
}

class Cuadrado {
  // Propiedad de cuadrado
  double lado = 0; // lado * lado

  // Definición de un getter en Dart
  double get area {
    return this.lado * this.lado;
  }

  // Definición de un set
  set area(double valor) {
    this.lado = math.sqrt(valor);
  }

  // Definición del constructor
  Cuadrado(double lado) : this.lado = lado;

  // Definición de un método en dart
  double calcularArea() {
    return this.lado * this.lado;
  }
}
