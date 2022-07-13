void main(List<String> args) {
  final rawJson = {'nombre': 'Tony Stark', 'poder': 'Dinero'};

  // final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneracion');
  // print(wolverine);

  // De esta manera podríamos recibir el JSON
  // ! -> Es para decirle a Dart que estmos seguiros de lo que mandamos
  // Para que no nos de una advertencia
  // final ironMan = new Heroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);
  final ironMan = new Heroe.fromJson(rawJson);
  print(ironMan);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  // Constructor para un JSON
  Heroe.fromJson(Map<String, String> json)
      : this.nombre = json['nombre'] ?? 'No tiene nombre',
        this.poder = json['poder'] ?? 'No tiene poder';
  /* De esta manera definimos un constructor para un json
      el signo ?? es un condicional, si nombre, o poder no
      estan definidos, el valor por defecto será lo que le 
      sigue.
      */

  String toString() {
    return '''
          Heroe
    nombre: ${this.nombre}, 
    poder: ${this.poder}
    ''';
  }
}
