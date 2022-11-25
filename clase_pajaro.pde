class Pajaro {
  //-----PROPIEDADES A USAR----
  int px, py;
  int mover;
  PImage[] ave;
  Pajaro() {
    ave = new PImage[3];
    //----ASIGNACION DEL PAJARO EN CONSTRUCTOR----
    for (int i=0; i<3; i++) {
      ave[i] = loadImage ("ave"+i+".png");
      ave[i].resize(100, 75);
    }
    px = 50;
    py= 200;
    imageMode (CENTER);
  }
  //-----DIBUJAR PAJARO Y ELLIPSE PARA COLISION-----
  void dPajaro() {
     ellipse (px, py, 60, 10);
    image (ave[mover], px, py);
    if (frameCount%5==0) {             
      mover++;
      mover=mover%3;                   
    }
  }
  //-----MOVIMIENTO DEL PAJARO----
  void mover (int flecha) {
    if (frameCount%5==0) {
      if (flecha== RIGHT) {
        px+=7;
      }
      if (flecha== LEFT) {
        px-=7;
      }
      if (flecha== UP) {
        py -=7;
      }
      if (flecha== DOWN) {
        py +=7;
      }
      if (px > 700 - 100/2) {
        px = 700 - 100/2;
      } else if ( px < 0 + 100/2) {
        px= 0 + 100/2;
      }

      if (py > 400 - 75/2) {
        py = 400 - 75/2;
      } else if (py < 0 + 75/2) {
        py =0 + 75/2;
      }
      mover++;
      mover=mover%3;
    }
  }
}  
