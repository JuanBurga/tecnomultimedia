class Bala {
  //------PROPIEDADES A USAR----- 
  float posx, posy;
  float tam;
  float vel;
  PImage proyec;

  Bala(float x, float y, float t) {

    posx = x;
    posy = y;
    tam = t;
    vel = random (2, 3);
    proyec = loadImage ("bala.png");
    proyec.resize(40, 40);
  }
//--------MOVIMIENTO DE LA BALA-------
  void mover() {
    posx -= vel;
    reciclar();
  }
  //----DIBUJAR BAJA Y ELLIPSE PARA LA COLISION
  void dBala() {
    ellipse (posx, posy, 20, 10);
    image(proyec, posx, posy);
  }
  //-----RECICLAR LAS BALAS------
  void reciclar() {
    if (posx < 0 + tam) {
      posx = 800;
      posy = random ( height);
      vel = random (2, 3);
    }
  }
}
