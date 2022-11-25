class Principal {
  //----PROPIEDADES A USAR----
  //----DECLARACION DE INSTANCIAS DE CLASES----
  String [] texto;
  int estadoID = 0;
  int puntaje = 0;

  Fondo Fondazo;
  Pajaro Pajarazo;
  Bala b1;
  Hoja h1;
  Hoja [] h = new Hoja [3];
  Bala [] ba = new Bala [5];
  //----ASIGNACION DE CLASES----
  Principal() {
    Fondazo = new Fondo();
    Pajarazo = new Pajaro();

    texto = new String[8];
    texto[0]="INSTRUCCIONES";
    texto[1]="Recoger todas las hojas, \nsi las balas te tocan 3 veces pierdes";
    texto[2]="El ave se mueve \ncon las flechas del teclado";
    texto[3]="Tecla [ J ] para comenzar";
    texto[4]="FELICITACIONES, GANASTE!";
    texto[5]="UPS...PERDISTE!";
    texto[6]="by Juan M. Burga León";
    texto[7]="Tecla [ J ] para volver a jugar";

    h1 = new Hoja (random(250, 600), random(50, 350), 30);
    for ( int i =0; i<h.length; i++) {
      h [i] = new Hoja (random(250, 600), random(50, 350), 30);
    }
    b1 = new Bala (800, random(height), 40);
    for (int i= 0; i<ba.length; i++) {
      ba [i] = new Bala (800, random(height), 40);
    }
  }
  //----PANTALLAS/ESTADOS DEL JUEGO----
  void pantalla() {
    println(puntaje);
    if (estadoID==0) {
      inicio();
    }
    if (estadoID==1) {
      juego();
    }
    if (estadoID==2) {
      ganar();
    }
    if (estadoID==3) {
      perder();
    }
  }
  void inicio() {
    estadoID = 0;
    background(173, 210, 194);
    textAlign(CENTER);
    fill(167, 211, 166);
    rectMode (CENTER);
    rect(350, 50, 250, 50, 10);
    rect(350, 150, 350, 100, 10);
    rect(350, 270, 350, 100, 10);
    rect(350, 360, 350, 50, 10);
    textSize(25);
    fill(0);
    text(texto[0], 355, 60);
    textSize(18);
    text(texto[1], 355, 140);
    text(texto[2], 355, 260);
    text(texto[3], 355, 365);
  }
  //----LO QUE QUIERO QUE SE DIBUJE / SUCEDA EN LA PANTALLA / ESTADO DE JUEGO----
  void juego() {
    estadoID = 1;
    Fondazo.dFondo();
    Pajarazo.dPajaro();
    Pajarazo.mover(keyCode);
    b1.dBala();
    b1.mover();
    b1.reciclar();
    h1.dHoja();

    //ARREGLO DE LA HOJA CON COLISION Y PANTALLA / ESTADO
    for (int i =0; i < h.length; i++) {
      h[i].dHoja();

      float dH = dist (h[i].px, h[i].py, Pajarazo.px, Pajarazo.py);
      if (dH <= 35) {
        ganar();
      }
    }
    //ARREGLO DE BALA CON COLISION, PANTALLA / ESTADO
    for (int i = 0; i<ba.length; i++) {
      ba[i].dBala();
      ba[i].mover();
      ba[i].reciclar();
      float dB = dist(ba[i].posx, ba[i].posy, Pajarazo.px, Pajarazo.py);
      if (dB<=35) {
        puntaje= 3;
        perder();
      }
    }
  }
  //----PANTALLA / ESTADO GANAR CON REINICIO DEL JUEGO----
  void ganar() {
    estadoID = 2;
    background(173, 210, 194);
    textAlign(CENTER);
    fill(167, 211, 166);
    rectMode (CENTER);
    rect(350, 100, 350, 60, 10);
    rect(350, 200, 350, 60, 10);
    rect(350, 350, 300, 40, 10);
    textSize(25);
    fill(0);
    text(texto[4], 355, 105);
    textSize(18);
    text(texto[7], 355, 205);
    text(texto[6], 355, 355);
    reiniciar();
  }
  //----PANTALLA / ESTADO PERDER CON REINICIO DEL JUEGO----
  void perder() {
    estadoID = 3;
    background(173, 210, 194);
    textAlign(CENTER);
    fill(167, 211, 166);
    rectMode (CENTER);
    rect(350, 100, 350, 60, 10);
    rect(350, 200, 350, 60, 10);
    rect(350, 350, 300, 40, 10);
    textSize(25);
    fill(0);
    text(texto[5], 355, 105);
    textSize(18);
    text(texto[7], 355, 205);
    text(texto[6], 355, 355);
    reiniciar();
  }
  //----TECLAS PARA LAS PANTALLAS / ESTADO----
  void keyPressed() {
    if (estadoID == 0 ) {
      if (key == 'j' || key == 'J') {
        juego();
      }
    }
    if (estadoID == 2) {
      if (key == 'j' || key == 'J') {
        inicio();
      }
    }
    if (estadoID == 3) {
      if (key == 'j' || key == 'J') {
        inicio();
      }
    }
  }
  //----REINICIO DE POSICIONES----
  void reiniciar() {
    Pajarazo.px = 50;
    Pajarazo.py = 200;
    ba[0] = new Bala (800, random(height), 40);
    ba[1] = new Bala (800, random(height), 40);
    ba[2] = new Bala (800, random(height), 40);
    ba[3] = new Bala (800, random(height), 40);
    ba[4] = new Bala (800, random(height), 40);
    h [0] = new Hoja (random(250, 600), random(50, 350), 30);
    h [1] = new Hoja (random(250, 600), random(50, 350), 30);
    h [2] = new Hoja (random(250, 600), random(50, 350), 30);
  }
}
