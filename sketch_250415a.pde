PImage img;

void setup() {
  
  size(800, 400);
  
  background(255, 220, 230);
  
  img = loadImage("feae3e584f9caff34bac5df276a1696c.jpg");

  img.resize(400, 400);

  // Cuerpo
  
  fill(100, 200, 200);
  noStroke();
  ellipse(600, 250, 80, 160);

  // Piernas
  
  ellipse(585, 330, 10, 40);
  ellipse(615, 330, 10, 40);

  // Brazos
  
  ellipse(540, 220, 40, 10);
  ellipse(660, 220, 40, 10);

  // Ojo
  
  fill(255, 255, 150);
  ellipse(600, 180, 50, 50);

  // Pupila roja
  
  fill(255, 50, 50);
  ellipse(600, 180, 20, 20);

  // Boca
  
  fill(50, 0, 0);
  arc(600, 230, 50, 40, 0, 3);

  // Dientes
  
  fill(255);
  rect(590, 233, 10, 5);
  rect(600, 233, 10, 5);

  // Antenas 
  
  stroke(0, 100, 0);  
  strokeWeight(4);    
  line(600, 150, 570, 70);
  line(600, 150, 630, 60);

  // Rayitas antenas izquierda
  
  strokeWeight(2);  
  line(560, 85, 580, 75);
  line(565, 95, 585, 85);
  line(570, 105, 590, 95);
  line(575, 115, 595, 105);
  line(580, 125, 600, 115);

  // Rayitas antenas derecha
  
  line(604, 115, 620, 125);
  line(604, 105, 625, 115);
  line(610, 95, 630, 105);
  line(610, 85, 635, 95);
  line(610, 75, 638, 85);
}

void draw(){
  image(img, 0, 0); 
}
