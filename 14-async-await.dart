void main(List<String> args) async {
  print('Antes de la petición');

  final data = await httpGet('https://api.nasa.com/aliens');

  print(data);

  print(await httpGet('https://api.nasa.com/aliens')); // Valido

  //print(getNombre('10')); -> Nos retorna 'Instance of Future<string>

  // Se puede hacer de ambas maneras
  // getNombre('10').then(print);
  // getNombre('10').then((data) => print(data));

  final nombre = await getNombre('10');
  print(nombre);

  print('Fin programa');
}

// Para usar async, debemos tenerlo como Future, ya que este es el retorno
Future<String> getNombre(String id) async {
  return '$id - Juan';
}

// Implementación de un future
Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola Mundo - 3 segundos';
  });
}
