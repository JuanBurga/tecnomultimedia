/* BURGA LEON JUAN MANUEL 
 N° 91587/3
 https://youtu.be/0zFkOCV3_sw
 */
Principal princ;
void setup () {
  size(700, 400);
  princ = new Principal();
}
void draw() {
  background (255);
  princ.display();
  if (keyPressed) {
    princ.moverpajaro(keyCode);
  }
}

