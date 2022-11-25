import processing.sound.*;

/* BURGA LEON JUAN MANUEL 
 N° 91587/3
https://youtu.be/57p9QpD_4JA
 */
SoundFile mfondo;
Principal princ;

void setup () {
  size(700, 400);
  princ = new Principal();
  mfondo = new SoundFile (this, "musicfondo.mp3");
  mfondo.loop();
}
void draw() {
  background (255);
  princ.pantalla();
  princ.keyPressed();
}
