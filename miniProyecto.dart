import 'dart:io';
import 'dart:math';

void main() {
  List<String> listaTema = [];
  List<String> listaTemaEditar = [];

  List<String> Aprendices = [
    "ANDRES FELIPE SANCHEZ HURTADO",
    "ANGIE DAHIANA RIOS QUINTERO",
    "CRISTIAN ALVAREZ ARANZAZU",
    "DANIEL ESTIVEN ARBOLEDA DUQUE",
    "DAVID ANDRES MORALES GUAPACHA",
    "DAVID STIVEN OCAMPO LONDOÑO",
    "ESTEBAN REYES AGUDELO",
    "JACOBO GALVIS JIMENEZ",
    "JAIME ANDRES CALLE SALAZAR ",
    "JEFERSON MAURICIO HERNANDEZ LADINO",
    "JHON ALEXANDER PINEDA OSORIO",
    "JOSE MIGUEL SIERRA ARISTIZABAL",
    "JOSÉ SEBASTIÁN OCAMPO LÓPEZ",
    "JUAN ANDRES OSORIO GOMEZ",
    "JUAN DIEGO CALVO OSORIO",
    "JUAN ESTEBAN LOPEZ CALLE",
    "JUAN PABLO RIOS ARISTIZABAL",
    "MARIA PAULA MELO SOLANO",
    "MIGUEL ANGEL PEÑA JIMENEZ",
    "SAMUEL CASTAÑO CARDONA",
    "JUAN JOSÉ POSADA PÉREZ",
    "ALEJANDRO SERNA LONDOÑO",
    "JUAN MANUEL ZULUAGA RINCON",
    "JUAN DANIEL GOMEZ LASERNA",
    "YERSON STIVEN HERRERA OBANDO",
    "MATEO HERRERA VARGAS",
    "ALEJANDRO VALLEJO ESCOBAR"
  ];

  List<List<String>> temas = [
    [
      "Qué es la programación Orientada a Objetos? ¿Cuáles son las características principales de la programación orientada a objetos?",
      "3"
    ],
    [
      "¿Cuál es la diferencia entre programación orientada a objetos y programación estructurada?",
      "3"
    ],
    [
      "¿Qué es un objeto? ¿Qué es una Clase? ¿Cuál es la diferencia entre Objeto y Clase?",
      "3"
    ],
    ["¿Qué es abstracción?", "3"],
    ["¿Qué es encapsulamiento?", "3"],
    ["¿Qué es herencia?", "4"],
    ["¿Qué es polimorfismo y de un ejemplo?", "4"],
    ["¿Cuáles son los principales diagramas de UML?", "4"],
  ];

  int opcionIndice,
      ingresarOtrosAprendiz,
      menuTemasSeleccionado,
      menuAprendizSeleccionado,
      ingresarOtroTema,
      temaAEliminar,
      temaEditar,
      AprendizEditar,
      AprendizEliminar;

  String? nuevoTema,
      temasCantAlumnos,
      temaTemporal,
      listaAprendiz,
      nuevoAprendiz,
      nuevaComplejidad;

  do {
    print("-" * 20);
    print("Indice:");
    print("-" * 20);
    print("1- menu temas");
    print("2- menu Aprendices");
    print("3- sorteo de grupos");
    print("0- salir");
    print("*" * 30);
    print("digite la opcion deseada:");
    opcionIndice = int.parse(stdin.readLineSync()!);
    print("*" * 30);

    switch (opcionIndice) {
      case 1:
        do {
          print("MENU TEMAS:");
          print("-" * 20);
          print("1- crear temas de exposicion");
          print("2- editar temas de exposicion");
          print("3- mostrar temas de exposicion");
          print("4- eliminar temas de exposicion");
          print("0- salir");
          print("*" * 30);
          print("digite la opcion deseada:");
          menuTemasSeleccionado = int.parse(stdin.readLineSync()!);
          print("*" * 30);

          switch (menuTemasSeleccionado) {
            case 1:
              do {
                print("Ingrese el tema");
                temaTemporal = stdin.readLineSync()!;
                print("~" * 20);
                print(
                    "ingrese la cantidad de Aprendices que pueden participar el tema (complejidad)");
                temasCantAlumnos = stdin.readLineSync()!;
                listaTema = [temaTemporal, temasCantAlumnos];
                temas.add(listaTema);
                print("~" * 20);
                print("1- ¿Desea ingresar otro tema?");
                print("0- salir");
                ingresarOtroTema = int.parse(stdin.readLineSync()!);
              } while (ingresarOtroTema != 0);
              print("*" * 30);

              break;
            case 2:
              print("Temas de exposicion:");
              for (int i = 0; i < temas.length; i++) {
                print("  Tema numero " +
                    (i).toString() +
                    " : " +
                    temas[i][0] +
                    "  complejidad:  " +
                    temas[i][1]);
              }
              print("*" * 30);
              print("ingrese el numero de tema a editar");
              temaEditar = int.parse(stdin.readLineSync()!);
              print("~" * 20);
              print("ingrese el nuevo tema");
              nuevoTema = stdin.readLineSync()!;
              print(
                  "ingrese la nueva cantidad de Aprendices segun la compjidad del tema");
              nuevaComplejidad = stdin.readLineSync()!;
              listaTemaEditar = [nuevoTema, nuevaComplejidad];
              temas.fillRange(temaEditar, temaEditar + 1, listaTemaEditar);
              print("~" * 20);
              print("la nueva lista es:");
              for (int i = 0; i < temas.length; i++) {
                print("  Tema numero " +
                    (i).toString() +
                    " : " +
                    temas[i][0] +
                    " complejidad:  " +
                    temas[i][1]);
              }
              print("*" * 30);
              break;

            case 3:
              print("Temas de exposicion");
              for (int i = 0; i < temas.length; i++) {
                print("  Tema numero " +
                    (i).toString() +
                    " : " +
                    temas[i][0] +
                    "  complejidad:  " +
                    temas[i][1]);
              }
              print("*" * 30);
              break;
            case 4:
              do {
                print(
                    "¿Cual temas desea eliminar? digite el numero correspondiente");
                      print("*"*30);
                for (int i = 0; i < temas.length; i++) {
                  print("  Tema numero " +
                      (i).toString() +
                      " : " +
                      temas[i][0] +
                      "  complejidad:  " +
                      temas[i][1]);
                      print("*"*30);
                }
                temaAEliminar = int.parse(stdin.readLineSync()!);
                if (temaAEliminar > temas.length) {
                  print("El numero es incorrecto");
                  print("Ingrese otra opcion");
                } else {
                  temas.removeAt(temaAEliminar);
                  print("la nueva lista es:");
                  for (int i = 0; i < temas.length; i++) {
                  print("  Tema numero " +
                      (i).toString() +
                      " : " +
                      temas[i][0] +
                      "  complejidad:  " +
                      temas[i][1]);
                  }
                  print("*" * 30);
                }
              } while (temaAEliminar > temas.length);

              break;

            default:
              print("Menu no existe!");
              break;
          }
        } while (menuTemasSeleccionado != 0);
        break;

      case 2:
        do {
          print("MENU APRENDICES");
          print("-" * 20);
          print("1- crear lista de Aprencices");
          print("2- editar  lista de Aprencices");
          print("3- mostrar lista de Aprencnosices");
          print("4- eliminar lista de Aprencices");
          print("0- salir");
          print("*" * 30);
          print("digite la opcion deseada:");
          menuAprendizSeleccionado = int.parse(stdin.readLineSync()!);
          print("*" * 30);

          switch (menuAprendizSeleccionado) {
            case 1:
              do {
                print("ingrese el nombre completo del Aprendiz:");
                listaAprendiz = stdin.readLineSync()!;
                print("*" * 30);
                Aprendices.add(listaAprendiz);

                print("1 - desea ingresar otroAprendiz?");
                print("0 - salir");
                ingresarOtrosAprendiz = int.parse(stdin.readLineSync()!);
                print("*" * 30);
              } while (ingresarOtrosAprendiz != 0);

              break;

            case 2:
              for (int i = 0; i < Aprendices.length; i++) {
                print("  Los alumnos son " +
                    (i).toString() +
                    " : " +
                    Aprendices[i]);
              }
              print("*" * 30);
              print("Ingrese el numero del Aprendiz que desea editar");
              AprendizEditar = int.parse(stdin.readLineSync()!);
              print("Ingrese el nuevo Aprendiz");
              nuevoAprendiz = stdin.readLineSync()!;
              print("*" * 30);
              Aprendices.fillRange(
                  AprendizEditar, AprendizEditar + 1, nuevoAprendiz);
              //Aprendices[AlumnoEditar] = nuevoAprendiz;
              print("La  nueva lista es:");
              for (int i = 0; i < Aprendices.length; i++) {
                print("  Los  Aprendiz  son" +
                    (i).toString() +
                    " : " +
                    Aprendices[i]);
              }
              print("*" * 30);
              break;
            case 3:
              for (int i = 0; i < Aprendices.length; i++) {
                print("  Los  Aprendiz  son " +
                    (i).toString() +
                    " : " +
                    Aprendices[i]);
              }
              break;
            case 4:
              do {
                print("ingrese el numero del Aprendiz que desea eliminar");
                for (int i = 0; i < Aprendices.length; i++) {
                  print(" Aprendiz " + (i).toString() + " : " + Aprendices[i]);
                }

                AprendizEliminar = int.parse(stdin.readLineSync()!);
                if (AprendizEliminar > Aprendices.length) {
                  print("numero incorrecto");
                  print("ingrese otro numero");
                } else {
                  Aprendices.removeAt(AprendizEliminar);
                  print("*" * 30);
                  print("la nueva lista es:");
                   for (int i = 0; i < Aprendices.length; i++) {
                print("  Los  Aprendiz  son " +
                    (i).toString() +
                    " : " +
                    Aprendices[i]);
                    }
                  print("*" * 30);
                }
              } while (AprendizEliminar > Aprendices.length);
              break;

            default:
              print("menu no existe");
              break;
          }
        } while (menuAprendizSeleccionado != 0);
        break;

      case 3:
        bool falloElSorteo = false;
        List<String> AprendicesTemporal = List.from(Aprendices);
        for (var i = 0; i < temas.length; i++) {
          print("El tema: ");
          print(temas[i][0]);
          int cantAlumnos = int.parse(temas[i][1]);

          if (AprendicesTemporal.length < cantAlumnos) {
            print("#########################################");
            print("NO HAY ALUMNOS SUFICIENTES");
            print("#########################################");
            falloElSorteo = true;
            AprendicesTemporal = [];
            break;
          } else {
            for (var j = 0; j < cantAlumnos; j++) {
              int posicionAleatoria =
                  Random().nextInt(AprendicesTemporal.length - 0) + 0;
              print("-" + AprendicesTemporal[posicionAleatoria]);
              AprendicesTemporal.removeAt(posicionAleatoria);
            }
          }
        }

        if (AprendicesTemporal.length > 0) {
          print("#########################################");
          print("NO HAY TEMAS SUFICIENTES");
          print("#########################################");
          falloElSorteo = true;
        }

        if (falloElSorteo == false) {
          print("#########################################");
          print("SORTEO EXITOSO");
          print("#########################################");
        }

        if (falloElSorteo == true) {
          print("#########################################");
          print("SORTEO FILLIDO");
          print("#########################################");
        }

        break;

      default:
        print("¡HASTA PRONTO!🙋‍♂️🙋‍♀️");
        break;
    }
  } while (opcionIndice != 0);
}
