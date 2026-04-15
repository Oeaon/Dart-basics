import 'dart:ffi';

import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {

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

