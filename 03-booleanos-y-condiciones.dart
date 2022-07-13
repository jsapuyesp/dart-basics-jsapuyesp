void main() {
  //Booleano
  bool? isActive = true; //el ? significa que puede ser nulo | 
  // Sin el ? la variable no podría ser nula.  | No se recomienda

  //Condicional
  if (isActive) {
    print('Esta activo');
  } else {
    print('No Está activo'); //Se muestra la advertencia ya que 
                            // No se está entrando al bloque de código
  }
}
