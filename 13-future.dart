void main(List<String> args) {
  print('Antes de la petición');

  httpGet('https://api.nasa.com/aliens').then((data) {
    print(data.toLowerCase());
  });

  print('Fin programa');
}

// Implementación de un future
Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola Mundo - 3 segundos';
  });
}
