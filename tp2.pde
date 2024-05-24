// Aylen Abigail Monzon
//tp2, comision 3
//Obras de arte digital

PImage nam1;
PImage nam2;
PImage nam3;
PFont fuenteP1, fuenteP2, fuenteP3;
int contador=0;
int movXtexto1=400;
int movYtexto2=300;
int fade =0;

void setup() {
  size(640, 480);
  nam1=loadImage("nam1.jpg");
  nam2=loadImage("nam2.jpg");
  nam3=loadImage("nam3.jpeg");

  fuenteP1=loadFont("Constantia-48.vlw");
  fuenteP2=loadFont("CourierNewPS-BoldMT-48.vlw");
  fuenteP3=loadFont("ForteMT-48.vlw");
};

void draw() {

  if (contador <560) {
    contador++;
  }

  if (contador < 180) {
    image(nam1, 0, 0, 640, 480);

    textFont(fuenteP3, 24);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Nam June Paik, \n fue un compositor y videoartista surcoreano \n de la segunda mitad del siglo XX", movXtexto1, 400);
    movXtexto1--;
  } else if (contador > 180 && contador < 360) {
    image(nam3, 0, 0, 640, 480);

    textFont(fuenteP2, 20);
    textAlign(CENTER, CENTER);
    fill(0);
    text("El trabajo experimental, innovador y divertido \n de Nam June Paik ha tenido una profunda influencia \n en el arte y la cultura actuales Fue pionero \n en el uso de la televisión y el vídeo en el arte \n y acuñó la frase *superautopista electrónica* para \n predecir el futuro de la comunicación en la era \n de Internet", 320, movYtexto2);
    movYtexto2--;
    
  } else if (contador > 360) {
    image(nam2, 0, 0, 640, 480);

    textFont(fuenteP1, 20);
    textAlign(CENTER, CENTER);
    fill(255, fade);
    text("Fue en 1964 en Nueva York cuando comenzó a combinar sus intereses\n visuales y musicales. En colaboración con la violonchelista \nCharlotte Moorman, creó una de sus obras más \ninfluyentes, TV Cello (1971), una pieza escénica que\n transformó una pila de televisores en un \ninstrumento musical. ", 315, 100);
    fade++;


    fill(255,0,0);
    rect(530, 420, 100, 50);
    textAlign(LEFT, CENTER);
    textSize(16);
    fill(0);
    text("Reinicio", 550, 445);
  }
}

void mousePressed() {

  if (contador > 360 && mouseX > 530 && mouseX < 630 && mouseY > 420 && mouseY < 470) {
    contador = 0;
    movXtexto1 = 0;
    movYtexto2 = 0;
    fade = 0;
  }
}
