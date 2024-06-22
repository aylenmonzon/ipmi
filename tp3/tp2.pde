//   Aylen Monzon comision 3
//   https://youtu.be/N3YclJRObnQ   

PImage ilusion;

String estado = "princ" ;

void setup() {
  size(800, 400);
  background(255);
  ilusion=loadImage("ilusion.jpeg");
  image(ilusion, 0, 0, 400, 400);
}


void draw() {
    grilla(400); 
}


void keyPressed() { //esta es una función que no retorna valor, maneja estados a través de teclas 
  if (key == 'a') { //si tocas la a el color blanco se vuelve azul
    estado = "azul";
  } else if (key == 'v') { //si tocas la v el color blanco se vuelve verde
    estado = "verde";
  } else if (key == 'r') { //si tocas la r el color blanco se vuelve rojo
    estado = "rojo";
  } else if (key == 'i') { //si tocas la i el programa vuelve al inicio
    estado = "princ";
  }
}
