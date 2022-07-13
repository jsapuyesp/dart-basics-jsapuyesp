void main(List<String> args) {
  // Definición de un map
  Map persona = {
    'nombre': 'Juan',
    'edad': 22,
    'soltero': false,
    1: 100, //Cuidado con esto, aunque puede ser util en algunos casos
    true: false //Cuidado con esto, aunque puede ser util en algunos casos
  };

  print(persona);

  print(persona['nombre']);

  // Definición de un map con tipo

  Map<String, dynamic> persona2 = {
    //Map que tiene llave tipo string
    'nombre': 'Juan', // Y contenido tipo dynamic
    'edad': 22,
    'soltero': false,
  };

  print(persona2);
}
