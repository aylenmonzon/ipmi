// Aylen Abigail Monzon comision 3
//https://youtu.be/N3YclJRObnQ

PImage ilusion;
String estado = "princ";

void setup() {
  size(800, 400);
  background(255);
  ilusion = loadImage("ilusion.jpeg");
  image(ilusion, 0, 0, 400, 400);
}

void draw() {
  grilla(400);
  String mensaje = funcionamiento();
  textSize(20);
  fill(23, 11, 100);
  text(mensaje, 10, height-60);
  fill (250);
}

void keyPressed() { //esta es una función que no retorna valor, maneja estados a través de teclas
  if (key == 'a') {  //si tocas la A el color blanco se vuelve azul
    estado = "azul";
  } else if (key == 'v') {  //si tocas la V el color blanco se vuelve verde
    estado = "verde";
  } else if (key == 'r') {  //si tocas la R el color blanco se vuelve rojo
    estado = "rojo";
  } else if (key == 'i') {  // si tocas la i se reinicia
    estado = "princ";
  }
}

void grilla(int x) { // funcion de la grila
  int l = 180;
  for (int c = 0; c < 2; c += 1) { //for anidado para hacer la grilla
    for (int f = 0; f < 2; f += 1) {
      rect(x + f * l, c * l, l, l);
      dibujo(415, 11, 13, 6);  //se delimitan las posiciones de los dibujos, con los ultimos 2 valores es hacia donde va el centro
      dibujo(610, 11, 6, 13);
      dibujo(415, 200, 13, 6);
      dibujo(610, 200, 6, 13);
    }
  }
}

void dibujo(int posX, int posY, int vx, int vy) {
  int l = 180;
  for (int vari = 0; vari < 10; vari += 1) {  //cuadrados de afuera hacia adentro
    noStroke();
    if (vari % 2 == 0) {  //color blanco o negro
      fill(0);
    } else if (mousePressed) { //con el mousePressed el color es random
      fill(random(255));
    } else if (estado == "azul") {
      fill(0, 0, 255);
    } else if (estado == "verde") {
      fill(0, 255, 0);
    } else if (estado == "rojo") {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    rect(posX, posY, l, l); //tamaño de los cuadrados
    posX = posX + vx;
    posY = posY + vy;
    l = l - 18;
  }
}

 String funcionamiento() {
  // fill(23, 11, 100);
  return "Bienvenido al programa. \ncambia el color con R,V,A. reinicia con i \n mouse altera los colores en escalas de grises";
}
