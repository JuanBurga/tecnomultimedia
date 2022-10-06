class Principal {
  Pajaro Pajarazo;
  Fondo Fondazo;

  Principal() {
    Pajarazo = new Pajaro();
    Fondazo = new Fondo();
  }
  void display() {
    Fondazo.dFondo();
    Pajarazo.dPajaro();
  }
  void moverpajaro(int teclaPres) {
    if (teclaPres == RIGHT) {
      Pajarazo.mover(RIGHT);
    }
    if (teclaPres == LEFT) {
      Pajarazo.mover(LEFT);
    }
    if (teclaPres == UP) {
      Pajarazo.mover(UP);
    }
    if (teclaPres == DOWN) {
      Pajarazo.mover(DOWN);
    }
  }
}

