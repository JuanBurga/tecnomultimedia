//ALUMNO: BURGA LEÓN JUAN MANUEL
//Nº: 91587/3
//CREDITOS DE SERIE VIKINGS

//VARIABLES

PImage titulo, barco1, barco2, bjorn, hacha, ragnar, escudo;   //FONDOS
String texprin, texsec, texdirec, texmusic;                 //TEXTOS DE REPARTO
PFont fuente;                                              // FUENTE 

void setup() {
  size(500, 500);
  fuente = loadFont("fuente1.vlw");    //CARGO FUENTE NUEVA
  textFont( fuente); 
  textSize(20);

  // REPARTO

  texprin = "ACTORES PRINCIPALES \nTravis Fimmel \nKatheryn Winnick \nClive Standen \nGeorge Blangden \nGustaf Skarsgard"; //ACTORES PRINCIPALES
  texsec = " ACTORES SECUNDARIOS \nAlexander Ludwing \nJessalyn Gilsing \nLinus Roache \nDonal Logue \nAlyssa Sutherlad";  // ACTORES SECUNDARIOS
  texdirec = "DIRECTORES \nKen Girotti \nKari Skogland \nJeff Woolnough";         // DIRECTORES
  texmusic = "MUSICA \nFever Ray \nTrevor Morris";                             // BANDA SONORA

  //IMAGENES DE FONDO

  titulo = loadImage("foto1.jpg");
  barco1= loadImage("foto2.jpg");
  barco2=loadImage("foto4.jpg");
  bjorn = loadImage("foto3.jpg");
  hacha=loadImage("foto5.jpg");
  ragnar = loadImage ("foto6.jpg");
  escudo= loadImage ("foto7.jpg");
}

void draw() {

  println(frameCount);
  if (frameCount < 20) {   //1RA IMAGEN - TITULO
    image(titulo, 0, 0, width, height);
  }
  if (frameCount > 100) {               // 2DA IMAGEN
    image(barco1, 0, 0, width, height);
  }
  if (frameCount > 135 && frameCount < 220) {  //ACTORES PRINCIPALES
    text (texprin, 260, 360 - frameCount);
  }
  if (frameCount > 245) {                      // 3RA IMAGEN
    image (bjorn, 0, 0, width, height);
  }
  if (frameCount > 260 && frameCount < 320) {
    text (texsec, 250, 470 - frameCount);       // ACTORES SECUNDARIOS
  }

  if (frameCount > 340) {
    image (barco2, 0, 0, width, height);   // 4TA IMAGEN
  }
  if (frameCount > 350 && frameCount < 375) {
    text (texdirec, 70, 600 - frameCount);    // DIRECTORES
  }
  if (frameCount > 385) {                     // 5TA IMAGEN
    image (hacha, 0, 0, width, height);
  }
  if (frameCount > 395 && frameCount < 420) {  // BANDA SONORA
    text (texmusic, 110, 600 - frameCount);
  }

  if (frameCount > 430) {                    // 6TA IMAGEN DE REINICIO 
    image (ragnar, 0, 0, width, height );
  }
  if (frameCount > 440) {                   // CIRCULO PARA EL BOTON DE RESET
    fill (150, 102, 14);
    strokeWeight(2); 
    circle (410, 425, 50);
  }
  if (frameCount >440) {                    // TEXTO QUE INDICA EL RESET
    fill(255);
    text("RESET", 380, 470, 15);
  }
}

void mousePressed() {                      //EVENTO PARA CLIKEAR EL BOTON DE RESET
  float d = dist(mouseX, mouseY, 410, 425);
  int r = 50/2;
  if (d < r) {           //AL CLIKEAR VUELVE A LOS 0 FRAME
    frameCount = 0 ;
  }
}
