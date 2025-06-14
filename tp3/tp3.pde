//https://youtu.be/SxNNPiPGLEg

PImage myImage;
boolean invertido = false; 
int modoColor = 0;
void setup() {
  size(800, 400);
  myImage = loadImage("ilusion optica.jpeg");
}

void draw() {
  background(255);
  image(myImage, 0, 0, 400, 400); 

 



if (modoColor == 0) {
    stroke(0);
    strokeWeight(3);    
    lineanegra(0);

    stroke(255);
    strokeWeight(0);    
    lineanegra(3);
    
  } else if (modoColor == 1) {
    stroke(255);
    strokeWeight(0);    
    lineanegra(0);

    stroke(0, 0, 80);
    strokeWeight(3);    
    lineanegra(3);
    
  } else if (modoColor == 2) {
    stroke(255);
    strokeWeight(0);    
    lineanegra(0);

    stroke(25, 25, 50);
    strokeWeight(3);    
    lineanegra(3);
  }
}
void keyPressed() {
if (key == 'a' || key == 'A') {
    modoColor = 1;
  } else if (key == 'n' || key == 'N') {
    modoColor = 2;
  } else if (key == 'r' || key == 'R') {
    modoColor = 0;
  }
}
