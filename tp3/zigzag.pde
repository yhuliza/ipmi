void lineanegra(int desplazamientoY) {
 float angulo = obtenerAngulo();
  for (int j = 0; j < 1; j++) {
    for (int i = 0; i < 12; i++) {
      float horizontal = 400 + i * 40;

      for (int y = -30; y < height + 20; y += 8) {
        float corto = map(y, 0, height, 0, 15);
        float largo = map(y, 0, height, 35, 20);

        pushMatrix();
        
        translate(horizontal, y + desplazamientoY); 
        rotate(angulo); 
        line(0, 25, 5 + corto, -8);
        line(5 + corto, -8, 5 + corto + largo, 10);

        popMatrix();
      }
    }
  }
}
float obtenerAngulo() {
  return map(mouseX, 0, width, -PI/4, PI/4);
}
