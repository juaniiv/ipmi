// Vazquez Juan Ignacio  –  Comisión 1

PImage[] imagenes = new PImage[6];
PFont fuente;

int pantalla = 0;
int segundos = 7;
int inicio;

float posX, posY, escala = 1;
int alfa = 255;

float bx = 520, by = 20, bw = 100, bh = 40;

void setup() {
  size(640, 480);
  fuente = createFont("Arial Black", 32);
  textFont(fuente);
  textAlign(CENTER, CENTER);

  imagenes = new PImage[6];
  imagenes[0] = loadImage("imagen0.jpg");
  imagenes[1] = loadImage("imagen1.jpg");
  imagenes[2] = loadImage("imagen2.jpg");
  imagenes[3] = loadImage("imagen3.jpg");
  imagenes[4] = loadImage("imagen4.jpg");
  imagenes[5] = loadImage("imagen5.jpg");

  inicio = millis();
  posX = -width / 2;          
}

void draw() {
  background(0);
  image(imagenes[pantalla], 0, 0, width, height);

//Cambio de diapo

  if (millis() - inicio > segundos * 1000) {
    pantalla = (pantalla + 1) % 6;
    inicio = millis();

    if (pantalla == 0) posX = -width / 2;
    if (pantalla == 1) posX =  width * 1.5;
    if (pantalla == 2) posY =  height + 40;
    if (pantalla == 3) posY = -40;
    if (pantalla == 4) escala = 0.1;
    if (pantalla == 5) alfa   = 0;
  }

  fill(255);
  textSize(22);
  float baseY = height * 0.72;

  if (pantalla == 0) {
    if (posX < width / 2) posX += 5;
    text("Michael Scofield planifica la fuga de su hermano\nLincoln Burrows, condenado a muerte injustamente.",
         posX, baseY);
  } 
  else if (pantalla == 1) {
    if (posX > width / 2) posX -= 5;
    text("Michael se infiltra con un tatuaje que esconde\n el plan de escape.",
         posX, baseY);
  } 
  else if (pantalla == 2) {
    if (posY > height * 0.6) posY -= 5;
    text("Dentro de Fox River, Michael forma alianzas\nmientras enfrentan guardias y reclusos peligrosos.",
         width / 2, posY);
  } 
  else if (pantalla == 3) {
    if (posY < height * 0.6) posY += 5;
    text("Tras superar obstáculos, el grupo ejecuta\nsu audaz fuga de la prisión.",
         width / 2, posY);
  }
  else if (pantalla == 4) {
    if (escala < 1) escala += 0.02;
    textSize(22 * escala);
    text("Los fugitivos son perseguidos mientras descubren\nuna red de corrupción que atrapó a Lincoln.",
         width / 2, height * 0.6);
    textSize(22);
  } 
  else if (pantalla == 5) {        
    if (alfa < 255) alfa += 5;
    fill(255, alfa);
    text("Michael y Lincoln luchan para limpiar sus nombres\ny desmantelar la conspiración que los atrapó.",
         width / 2, baseY);
    fill(255);

    // botón
    if (mouseX > bx && mouseX < bx + bw &&
        mouseY > by && mouseY < by + bh) {
      fill(250, 0, 0);
    } 
    else {
      fill(200);
    }
    rect(bx, by, bw, bh, 10);
    fill(0);
    textSize(16);
    text("Reiniciar", bx + bw / 2, by + bh / 2);
  }
}

void mousePressed() {
  if (pantalla == 5 &&
      mouseX > bx && mouseX < bx + bw &&
      mouseY > by && mouseY < by + bh) {

    pantalla = 0;
    inicio   = millis();
    posX     = -width / 2;
    posY     = 0;
    escala   = 1;
    alfa     = 255;
  }
}
