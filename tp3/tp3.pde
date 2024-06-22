//Aylen Abigail Monzon
//tp2 comision 1

PImage ilusion;

void setup() {
  size(800, 400);
  background(255);
  ilusion=loadImage("ilusion.jpeg");
  image(ilusion, 0, 0, 400, 400);
}

void draw() {
  
  int posX = 415;
  int posY = 11;
  float tam = 360;
  
  for(int vari = 0; vari<10; vari += 1){
    
    noStroke();
    
    if(vari % 2 == 0){
      fill(0);
    }else{
      fill(255);
    }
    
    rect(posX, posY, tam, tam);
    
    posX = posX + 25;
    posY = posY + 12;
    tam = tam - 37.3;
  }

}
