import 'dart:io';

import 'Torneo.dart';

void main() {
  int opcionIndice;

  do {
    print(" 🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱  BIENVENID@ AL UNIVERSO SENAMON 🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱🧱");
    print("");
    print("");

    print("""
      °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
    |    ------------- MENU PRINCIPAL -------------       |
    | 1. Fase 1                                           |
    | 2. Fase 2                                           |
    | 0. Salir                                            |                                 
    | Digite la opcion deseada:                           |
      °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°   """);
    opcionIndice = int.parse(stdin.readLineSync()!);
      print(".......................................................");


    switch (opcionIndice) {
      case 1:
        int fase = 1;
         print("""                       °°°°°°°°°°°°° INSTRUCCION   °°°°°°°°°°°°°°

                 
                  print("");
                 print("");### ANTES DE COMENZAR ESTE JUEGO ES NECESARIO QUE SEPA QUE ES APTO PARA MAXICO 2 PARTICIPANTES###""");
        Torneo faseUno = Torneo(fase);
        faseUno.Iniciar();
        break;

      case 2:
        int fase = 2;
        
         print("""                       °°°°°°°°°°°°° INSTRUCCION   °°°°°°°°°°°°°°

                 ### ANTES DE COMENZAR ESTE JUEGO ES NECESARIO QUE SEPA QUE ES APTO PARA MAXICO 4 PARTICIPANTES###""");
                 print("");
                 print("");
        Torneo faseDos = Torneo(fase);
        faseDos.Iniciar();

    }
  } while (opcionIndice != 0);
}
