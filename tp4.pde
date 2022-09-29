/* BURGA LEON JUAN MANUEL 
N° 91587/3
https://youtu.be/0zFkOCV3_sw
*/
Principal princ;
Pajaro p;
void setup () {
  size(700, 400);
  princ = new Principal();
  p = new Pajaro();
}
void draw() {
  background (255);
  princ.display();
  p.dPajaro();
  if (keyPressed) {
    p.mover(keyCode);
  }
}
