/* ALUMNO: BURGA LEÓN, JUAN MANUEL
 Nº : 91587/3
 https://youtu.be/QrC378-bb1A
 */
float posX, posY, vel;
void setup() {
  size(500, 500);
  posX = width/2;
  posY = height/2;
  vel= 1;
}
void draw() {
  background(255);
  strokeWeight(5);
  for (int i=0; i< height; i+=10) {
    line(i, 0, i, 500);
  }
  for (int c=width/2; c>0; c-=20) {
    ellipse(posX, posY, c, c);

    if (posX >= width - c/2) {
      vel = -1;
    }
    if (posX <= 0 + c/2) {
      vel = 1;
    }
  }
  posX = posX + vel;
  if (keyPressed) {
    if (key == 'x') {
      posX = width/2;
    }
  }
}
void keyPressed() {
  if (key== 'c') {
    background(random(255), random(255), random(255));
  }
}
