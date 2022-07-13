void main(List<String> args) {
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneracion');
  /*  New no siempre se usa, pero se recomienda
      para no confundir el llamado de una clase
      y de una función
  */

//   wolverine.nombre = 'Logan';
//   wolverine.poder = 'Regeneración';

  print(wolverine); // Nos da una instancia de Héroe
}

class Heroe {
  String nombre;
  String poder;

  // Constructor
  Heroe({required this.nombre, required this.poder});

/*   Otra manera de inicializar un constructor */
//   Heroe( String pNombre ) {
//     this.nombre = pNombre;
//   }

  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
