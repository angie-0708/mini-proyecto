
void main() {

List<int> lista = [2,1,8,0,5,8,2];
int mayor = 0;

for(int i =0; i <lista.length; i++){
  if(lista[i] > mayor ){
    mayor = lista[i];
  }
}
print("El mayor es ${mayor}");

for(int i =0; i <lista.length; i++){
  if(lista[i] == mayor ){
    print("Lista en la posicion ${i} tambien es igual a ${lista[i]}");
  }
}



}