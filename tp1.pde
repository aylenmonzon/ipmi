// A.A.monzon 
// comision 3 14hs a 16hs
PImage retrato;

void setup (){
size(800,400); 
}

void draw (){
fill (0,0,0);
circle (450,280,220); //pelo

retrato=loadImage("retrato.jpg");
image(retrato, 0, 0, 400, 400);

fill(255,224,173);
ellipse (580, 430, 370, 250); // hombro

ellipse (700,240, 30,70); // oreja

fill(219, 198,2);
ellipse (715, 240, 20,10); // aro
ellipse (700,290, 20,50); //aro

fill(255,224,173);
ellipse (600, 230, 200, 280); // cara

fill(206, 87,97);
quad (570,310, 590,300, 610,300, 630,310); // labios superior
quad (570,310, 585,325, 615,325, 630,310); // labio inferior 

fill(255,224,173);
ellipse (700, 400, 200, 100); //mano

fill(0,0,0);
quad (570,20, 620,20, 720,130, 570,130); // pelo 1

fill(0,0,0,200);
quad (530,200, 545,190, 580,190, 580,200); // ceja izquierda
quad (670,200, 620,200, 620,190, 655,190);// ceja derecha 

fill(225,225,225);
ellipse (560, 225, 35, 15); // ojo izquierdo
ellipse (635, 225, 35, 15);// ojo derecho

fill(64,26,29);
circle (568, 224, 11); // pupila izquierda
circle (643, 224, 11); // pupila derecha

fill(255,224,173);
circle (590, 280, 20);// nariz 1
circle (610, 280, 20);// nariz 2
circle (600, 275, 25);// nariz 3


fill(0,0,0);
ellipse (520, 120, 120, 160); // pelo 2
ellipse (700, 170, 70, 125);  // pelo 3


text(mouseX, 100, 50);
text(mouseX+","+mouseY, 100, 50);
}
void mousePressed(){
 println (mouseX+","+mouseY);
 
}
