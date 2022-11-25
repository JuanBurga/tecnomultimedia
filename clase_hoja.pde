class Hoja {
  //---PROPIEDADES A USAR-----
 float px, py, tam;
  PImage hojita;

  Hoja(float x, float y, float t) {
    px = x;
    py = y;
    tam = t;
    hojita = loadImage("hoja.png");
    hojita.resize(30, 30);
  }
  //--------DIBUJAR HOJA Y ELLIPSE PARA COLISION-----
  void dHoja() {
    ellipse(px,py,10,10);
    image (hojita, px, py);
  }
}
