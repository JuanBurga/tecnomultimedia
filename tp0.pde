void setup () {
  //ventana
  size(400, 400);
  background(93, 170, 160);
  //cabeza
  fill(110, 110, 105);
  rect(150, 50, 100, 60 );
  rect(125, 110, 75, 60);
  rect(200, 110, 75, 60);
  //orejas
  quad(150, 50, 130, 40, 80, 110, 100, 120);
  quad(250, 50, 270, 40, 320, 110, 300, 120);
  //ojos
  fill(255);
  ellipse(170, 90, 15, 20);
  ellipse(230, 90, 15, 20);
  fill(0);
  noStroke();
  ellipse(170, 90, 10, 10);
  ellipse(230, 90, 10, 10);
  triangle(200, 125, 190, 110, 210, 110);
  //cuerpo
  fill(110, 110, 105);
  stroke(0);

  triangle(200, 170, 150, 350, 250, 350);
  triangle(175, 260, 100, 310, 150, 350);
  triangle(225, 260, 300, 310, 250, 350);
  ellipse(170, 360, 40, 20);
  ellipse(230, 360, 40, 20);
  triangle(120, 326, 140, 350, 50, 350);
  triangle(280, 326, 260, 350, 350, 350);
  fill(255);
  noStroke();
  triangle(200, 240, 170, 350, 230, 350);
  triangle(50, 350, 80, 350, 80, 340);
  triangle(350, 350, 320, 350, 320, 340);
}
