class Fondo {
  //-----PROPIEDADES A USAR------
  PImage Fdesierto;
  int fx;
  Fondo() {
    fx = width;
    Fdesierto = loadImage ("fondo.jpg");
  }
  void dFondo() {
    image(Fdesierto, fx, 200);

    mover();
  }
  //------------MOVIMIENTO DEL FONDO Y REGRESO---------
  void mover() {
    fx = fx>0 ? fx : width;
    fx --;
  }
}
