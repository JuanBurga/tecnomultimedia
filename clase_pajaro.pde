class Pajaro {
  int px, py;
  int mover;
  PImage[] ave;
  Pajaro() {
    ave = new PImage[3];
    for (int i=0; i<3; i++) {
      ave[i] = loadImage ("ave"+i+".png");
      ave[i].resize(100, 75);
    }
    px = width/2;
    py= height/2;
    imageMode (CENTER);
  }
  void dPajaro() {
    image (ave[mover], px, py);
  }
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
