void main(List<String> args) {
  final nombre = 'Juan';
  saludarPosicional(nombre);
  saludarOpcional();
  saludarNoArg();
  saludarCombinacion(nombre);
  saludar2(nombre: nombre, mensaje: 'Greetings');
}

//Definición de función con argumentos posicionales, pueden ser varios
void saludarPosicional(String nombre) {
  print('Hola $nombre');
}

//Definición de función con argumentos opcionales
void saludarOpcional([String nombre = 'Sin nombre']) {
  print('Hola $nombre');
}

//Definición de función sin argumentos
void saludarNoArg() {
  print('Hola mundo');
}

//Definición de función con argumentos opcionales y posicionales
void saludarCombinacion(String nombre, [String mensaje = 'Hola']) {
  print('$mensaje $nombre');
}

// ---------------------------------------------------------------- //

/* 
  Una manera de definir la función {} significa que los argumentos
  pueden mandarse en cualquier orden.

  Required es para evitar los nulos y que siempre se mande

  Se puede usar ? también pero tendríamos null.
 */
void saludar2({
  required String nombre,
  required String mensaje,
}) {
  print('$mensaje $nombre');
}
