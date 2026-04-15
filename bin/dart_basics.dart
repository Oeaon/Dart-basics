import 'dart:ffi';
import 'dart:io';

void main(List<String> arguments) {
  print("Bienvenido a Dart Básicos");
  print("¿Qué ejercicio quieres ejecutar? (0 para el ejercicio de práctica, del 1 al 7 para los ejercicios reales, cualquier otro número para salir)");
  String respuesta = stdin.readLineSync()!;
ejercicios(respuesta);
}

void ejercicios(String respuesta){
switch (int.parse(respuesta)) {
  case 0:
    practise();
    break;
  case 1:
    exercise1();
    break;
  case 2:
    exercise2();
    break;
  case 3:
    exercise3();
    break;
  case 4:
    exercise4();
    break;
  case 5:
    exercise5();
    break;
  case 6:
    exercise6();
    break;
  case 7:
    exercise7();
    break;
  default:
    print("Ejercicio no encontrado");
    break;
  }
}

void practise(){
//Variables numéricas
  int edad = 25;
  double altura = 1.71;

//Variables de texto
  String nombre = "Jose";
  String apellido = "Gamez";
  String nombreCompleto = "$nombre $apellido";
  String datos = "Nombre: $nombreCompleto, Edad: $edad, Altura: $altura";
  print(datos);

//Variables booleanas
  bool esEstudiante = true;
  print("¿Es estudiante? $esEstudiante");

//Tipo dinámico
  dynamic variableDinamica = "Hola";
  print("Variable Dinámica:  $variableDinamica");
  variableDinamica = 123;
  print(variableDinamica);

  //Tipo fijo
  final String ciudad = "Málaga";
  const String pais = "España";
  print("Variable fija: ciudad: $ciudad, País: $pais");


//Conversiones
String toNumber="123";
int numbesOk= int.parse(toNumber);
print("Número convertido: $numbesOk");

int numberToString=456;
String stringOk=numberToString.toString();
print("Número convertido a String: $stringOk");

String stringToDouble="3.14";
double doubleOk=double.parse(stringToDouble);
print("String convertido a double: $doubleOk");

//Operaciones matemáticas
int a=2;
int b=4;

int suma= a+b;
int resta=a-b;
int multiplicacion=a*b;
double division=a/b;
int divisionEntera= a ~/ b; //división entera
int Modulo= a % b; //Módulo o resto de la división


print("Suma: $suma, resta: $resta, multiplicación: $multiplicacion, división: $division, división entera: $divisionEntera, módulo: $Modulo");

}

/*
+-------------------------------------+
|           EJERCICIOS                |
+-------------------------------------+
*/

void exercise1() {
  /*
    📌 EJERCICIO 1: CALCULADORA DE EDAD

    ✅ Objetivo:
    Escribe un programa en Dart que pida al usuario su año de nacimiento
    y calcule su edad actual.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario su año de nacimiento (leerlo como String).
    2️⃣ Convertir el año de nacimiento a un número entero.
    3️⃣ Calcular la edad restando el año de nacimiento al año actual (2025).
    4️⃣ Mostrar el resultado en un mensaje como: "Tienes X años."
  */
  

  print("Introduce tu año de nacimiento:");
  String date = stdin.readLineSync()!;
  if (!date.isEmpty && int.tryParse(date) != null) {
  const int currentYear = 2025;
  int result = currentYear - int.parse(date);
  print("Tienes $result años");
  }
  else{
    print("No se ha introducido ningún año de nacimiento válido.");
    return;
  }


}

void exercise2() {
  /*
    📌 EJERCICIO 2: CALCULADORA DE PROPINA

    ✅ Objetivo:
    Escribe un programa en Dart que calcule cuánto debe pagar cada persona 
    después de dividir la cuenta y agregar una propina.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario el total de la cuenta.
    2️⃣ Pedir el porcentaje de propina a agregar.
    3️⃣ Calcular el total a pagar sumando la propina.
    4️⃣ Pedir el número de personas para dividir la cuenta.
    5️⃣ Calcular cuánto debe pagar cada persona.
    6️⃣ Mostrar el resultado en pantalla.


  */

print("Introduce el total de la cuenta:");
  double cuentaSinPropina = double.parse(stdin.readLineSync()!);

  print("¿Cuál es el porcentaje de propina que deseas agregar?");
  double porcentajeDePropina = double.parse(stdin.readLineSync()!);
  
  double propina = (cuentaSinPropina * porcentajeDePropina) / 100;
  double totalConPropina = cuentaSinPropina + propina;

  // Mostramos el total con 2 decimales usando ${} para meter la función dentro del texto
  print("La cuenta total con propina es: ${totalConPropina.toStringAsFixed(2)}");
  
  print("¿Cuántas personas van a dividir la cuenta?");
  // Corregido: Las personas son un entero, no llevan decimales
  int personasDividir = int.parse(stdin.readLineSync()!);

  double totalPorPersona = totalConPropina / personasDividir;
  
  // Mostramos el resultado final formateado
  print("Cada persona debe pagar: ${totalPorPersona.toStringAsFixed(2)}");
}

void exercise3() {

  /*
    📌 EJERCICIO 3: IDENTIFICAR NÚMEROS POSITIVOS Y NEGATIVOS

    ✅ Objetivo:
    Escribe un programa en Dart que determine si un número ingresado 
    por el usuario es positivo, negativo o cero.
  */
  
  print("Introduce un número:");
  double number = double.parse(stdin.readLineSync()!);
  if (number > 0) {
    print("El número es positivo.");
  } else if (number < 0) {
    print("El número es negativo.");
  } else if (number == 0) {
    print("El número es cero.");
  }
  else {
    print("Entrada no válida. Por favor, introduce un número.");
  }}

  void exercise4() {
    
/*
    📌 EJERCICIO 4: MESES DEL AÑO

    ✅ Objetivo:
    Escribe un programa en Dart que reciba un número entre 1 y 12 
    e imprima el nombre del mes correspondiente del año.
  */

  print("Introduce un número entre 1 y 12:");
  int monthNumber = int.parse(stdin.readLineSync()!);
  List <String> months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
  if (monthNumber >= 1 && monthNumber <= 12) {
    print("El mes correspondiente es: ${months[monthNumber - 1]}");
  }
    else {
      print("Número no válido. Por favor, introduce un número entre 1 y 12.");
    }
  }

void exercise5() {
  /*
    📌 EJERCICIO 5: SUMA DE NÚMEROS PARES EN UNA LISTA

    ✅ Objetivo:
    Escribe un programa en Dart que tome una lista de números enteros 
    y calcule la suma de todos los números pares en la lista.

    🔹 Ejemplo:
    Entrada: [1, 2, 3, 4, 5, 6]
    Salida: La suma de los números pares es: 12

    TIP Si a un número le hacemos %2 == 0 es par.


  */
      List <String> lista = ["1", "2", "3", "4", "5", "6"];
      int sumaPares = 0;
      for (String numStr in lista) {
        int numPar = int.parse(numStr);
        if (esPar(numPar)) {
          sumaPares += numPar;
        }
      }
      print("La suma de los números pares de $lista  es: $sumaPares");
    }
  

  void exercise6() {
  /*
    📌 EJERCICIO 6: FILTRAR PALABRAS ÚNICAS EN UN SET

    ✅ Objetivo:
    Escribe un programa en Dart que reciba una lista de palabras con 
    algunas repetidas y almacene solo las palabras únicas en un Set. 
    Luego, muestra el conjunto resultante.

    🔹 Ejemplo:
    Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
    Salida: {dart, flutter, codigo, movil}
*/

List<String> lista = ["dart", "flutter", "dart", "codigo", "flutter", "movil"];
Set<String> palabrasUnicas = lista.toSet();
print("Palabras únicas: $palabrasUnicas");
}

void exercise7() {
/*
    📌 EJERCICIO 7: CONTAR LA FRECUENCIA DE PALABRAS EN UN MAP

    ✅ Objetivo:
    Escribe un programa en Dart que reciba una lista de palabras y cuente cuántas 
    veces aparece cada una, almacenando el resultado en un Map.

    🔹 Ejemplo:
    Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"]
    Salida: {dart: 3, flutter: 2, codigo: 1, movil: 1}
*/

List<String> lista = ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"];
Map<String, int> frecuanciaPalabras = {};
for (String palabra in lista) {
  if (frecuanciaPalabras.containsKey(palabra)) {
    frecuanciaPalabras[palabra] = frecuanciaPalabras[palabra]! + 1;
  } else {
    frecuanciaPalabras[palabra] = 1;
  }
}
print("En la lista $lista, la frecuencia de palabras es: $frecuanciaPalabras");
}

bool esPar(int number) {
  return number % 2 == 0;
}





