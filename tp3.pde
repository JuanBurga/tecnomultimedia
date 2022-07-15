/*BURGA LEON JUAN MANUEL
 https://youtu.be/U_aOUpv31ms
 Nº 91587/3
 */
int cant = 10;
int posX, posY, tamelip;
int estados;
String[] textos = {"corre ellipse corre", "mueve la ellipse roja con las fechas del teclado\n hasta llegar al otro lado \n esquivando las ellipses que caen \n \n si te toca una ellipse pierdes", "presiona la barra espaciadora para comenzar", 
  "FELICIDADES!! GANASTE", "QUE MAL... PERDISTE", "gracias por jugar \n by: Juan Burga", "presiona ENTER para volver a empezar"};
float[][] pos = new float [cant][2];
float[] tam = new float [cant];
float [] vel = new float [cant];
float [] []colorE = new float [cant][3];

void setup () {
  size(800, 600);
  posX = 50;
  posY = 350;
  tamelip = 30; 
  estados = 0;

  for (int i=0; i<cant; i++) {
    tam[i] = 20;
    vel [i] = random (6, 10);
    pos[i][0] = -200;
    pos[i][1] = random (100, 700);
    colorE [i][0] = random (0, 255); //R
    colorE [i][1] = random (0, 255);  //G
    colorE [i][2] = random (0, 255);  //B
  }
}

void draw() {
  pantInicio();
  pantJuego();
  jugador();
  keyPressed();
}

void pantInicio() {
  if (estados == 0) {
    background(255);
    titulos(textos [0], width/2, 150, 40);
    titulos( textos[1], width/2, height/2, 25);
    titulos (textos [2], width/2, 550, 25);
  }
}

void pantJuego() {
  if ( estados== 1) {
    background(255);
    strokeWeight(5);
    line (100, 0, 100, 600);
    line (700, 0, 700, 600);
    strokeWeight(1);
    for (int i=0; i<cant; i++) {
      pelotitas (pos [i] [1], pos [i][0], tam[i]);
      if (pos [i][0] > height + tam[i]) {
        tam[i] = 20;
        vel [i] = random (6, 10);
        pos [i][0] = -200;
        pos [i][1] = random (100, 700);
      }
      if (  floor( dist(posX + tamelip/2, posY + tamelip/2, pos [i][1]+tam[i]/2, pos [i][0]+tam[i]/2)) <=30 ) {
        titulos (textos [4], width/2, 300, 25);
        titulos (textos [6], width/2, 450,25);
        estados = 3;
      }

      pos [i][0] += vel [i];
    }
  }
}
void pelotitas( float px, float py, float tam) {
  for (int i=0; i<cant; i++) {
    fill( colorE [i][0], colorE [i][1], colorE[i][2]);
  }
  ellipse(px, py, tam, tam);
}
void titulos (String texto, int posx, int posy, int tamtext) {
  textSize (tamtext);
  stroke(0);
  textAlign(CENTER);
  fill (0);
  text(texto, posx, posy);
}
void keyPressed() {
  if (keyCode == LEFT) {
    posX -=5;
  } else if (keyCode == RIGHT) {
    posX +=5;
  }
  if (keyCode == UP) {
    posY -=5;
  } else if (keyCode == DOWN) {
    posY +=5;
  }
  if (keyCode == ENTER) {
    estados = 0;
  }
  if (keyPressed) {
    if (key ==' ') {
      estados = 1;
    }
  }
}
void jugador() {
  fill(255, 0, 0);
  ellipse (posX, posY, tamelip, tamelip);
  if (posX > 800 - tamelip/2) {
    posX = 800 - tamelip/2;
  } else if ( posX < 0 + tamelip/2) {
    posX = 0 + tamelip/2;
  }
  if (posY > 600 - tamelip/2) {
    posY = 600 - tamelip/2;
  } else if ( posY < 0 + tamelip/2) {
    posY = 0 + tamelip/2;
  }
  if (posX > 710){
    posX = 710;
    titulos (textos [3], width/2, 200, 40);
    titulos (textos [5], width/2, 500, 30);
    titulos (textos [6], width/2, 350, 25);
    estados = 2;
  }
}
 
  
