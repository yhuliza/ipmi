
  //VARIABLES
  PFont miTexto;
  int miVariable1 = 0;
  int miVariable2 = 480;
  
  //ANIMACION DIAPOSITIVA 2
  float tamTexto = 10;
  float velocidad = 0.1;
  
  //ANIMACION DE DIAPOSITIVA 3
  int posX = 0;    // posición del texto en X
  int dir = 1;     // dirección (1: derecha, -1: izquierda)
  int vel = 8;     // velocidad
  
  //ANIMACION DIAPOSITIVA 4
  float alphaTexto = 0;
  float incrementoAlpha = 2;
  int indiceAnterior = -1;
  
  PImage[] imagenes = new PImage[13];
  String[] textos = new String[13];
  int pantalla = 0; 
  int tiempoInicio;
 

void setup(){
 //TAMAÑO DE PANTALLA
  size(640, 480);

  //FUENTE DE TEXTO
  miTexto= loadFont("Rockwell-CondensedBold-48.vlw");
  
  //imagen
   imagenes[0] = loadImage("portada.jpeg");
  imagenes[1] = loadImage("personajes.jpg");
  imagenes[2] = loadImage("arco fisico culturismo.jpg");
  imagenes[3] = loadImage("arco de hoyuelo.jpg");
  imagenes[4] = loadImage("arco de teru.jpg");
  imagenes[5] = loadImage("arco de ritsu y la garra.jpg");
  imagenes[6] = loadImage("arco la garra.jpg");
  imagenes[7] = loadImage("arco toreno y espiritu maldito.jpg");
  imagenes[8] = loadImage("arco psiquicos unidos.jpg");
  imagenes[9] = loadImage("arco de reigen.jpg");
  imagenes[10] = loadImage("arco invasion de la garra.jpg");
  imagenes[11] = loadImage("arco arbol divino.jpg");
  imagenes[12] = loadImage("arco de cofesion y mob 100%.jpg");
  
  //texto
  textos[0] = "¿Qué es Mob Psycho 100?\nMob Psycho 100 es un anime basado en el manga de ONE (autor de One Punch Man), protagonizado por Shigeo “Mob” Kageyama, un adolescente con enormes poderes psíquicos que solo quiere llevar una vida normal.\n\nFechas de estreno:\nTemporada 1: Julio 2016\nTemporada 2: Enero 2019\nTemporada 3: Octubre 2022";
  textos[1] = "Personajes Principales – Mob Psycho 100\nShigeo “Mob” Kageyama\nEl protagonista. Un adolescente callado con poderes psíquicos inmensos. Aunque es muy poderoso, Mob quiere ser una persona normal y aprender a controlar sus emociones.\nReigen Arataka\n El autoproclamado ´mejor psíquico del mundo´, sin poderes reales. Es el jefe de Mob y actúa como su mentor. Aunque es un farsante, tiene una gran sabiduría emocional y valores fuertes.\n Dimple\nUn espíritu malicioso que quería ser un dios, pero tras ser derrotado por Mob, se convierte en su acompañante. Aporta humor y poco a poco se vuelve más humano y leal.\nRitsu Kageyama\nHermano menor de Mob. Inteligente, carismático y envidioso al principio por no tener poderes. Luego desarrolla habilidades psíquicas y se une a la lucha contra ´La Garra´.\nTeruki “Teru” Hanazawa\nUn psíquico de gran poder que inicialmente es arrogante y cruel. Después de perder ante Mob, cambia su forma de pensar y se convierte en uno de sus mejores aliados.\nTsubomi Takane\nLa chica que le gusta a Mob desde la infancia. Aunque no tiene un rol muy activo, representa el deseo de Mob por ser aceptado como una persona común.";
  textos[2] = "Temporada 1\nIntroducción y Club de Telepatía\nMob es un chico tranquilo con enormes poderes psíquicos. Aunque podría usarlos para destacar, desea vivir como un adolescente normal. En la escuela, se une al Club de Mejora Física para mejorar personalmente, mientras trabaja en secreto como exorcista bajo la guía de Reigen, un farsante sin poderes que actúa como su mentor.";
  textos[3] = "Culto a la Sonrisa (Dimple)\nMob investiga una secta donde las personas son obligadas a sonreír de forma permanente. Allí conoce a Dimple, un espíritu maligno que quiere volverse un dios. Mob lo derrota con su poder, pero Dimple sobrevive y comienza a seguirlo, convirtiéndose en un curioso aliado espiritual.";
  textos[4] = "Teru Hanazawa\nMob se enfrenta a Teru, otro psíquico adolescente que abusa de sus habilidades y cree ser superior al resto. Durante la pelea, Mob se niega a usar su poder para dañar, demostrando que tener habilidades no justifica la violencia. Teru es derrotado y comienza a cambiar su visión del mundo.";
  textos[5] = "Ritsu y la Garra\nRitsu, el hermano menor de Mob, vive frustrado por no tener poderes, pero eventualmente despierta habilidades propias. Es reclutado por un grupo llamado “La Garra”, que busca dominar a los psíquicos. Cuando es capturado, Mob arriesga todo para salvarlo."; 
  textos[6] = "Séptima División de la Garra\nMob, Reigen y un grupo de aliados psíquicos atacan la base de “La Garra” para rescatar niños secuestrados. Durante la misión, Reigen toma el liderazgo y da un discurso que desarma emocionalmente a los enemigos. Mob aprende que no necesita recurrir a la violencia si puede confiar en los demás."; 
  textos[7] = "Temporada 2\nTorneo y Espíritu Maldito\nMob participa en un torneo de culturismo para impresionar a una chica, pero es derrotado. Poco después, es contratado para exorcizar un espíritu que posee una casa. Durante el combate, se da cuenta de que el espíritu sólo quería proteger a su familia, y lo enfrenta con compasión en lugar de odio.";
  textos[8] = "Psíquicos Unidos\nMob colabora con un grupo de psíquicos para resolver distintos casos sobrenaturales. Esta etapa muestra cómo Mob se convierte en un joven más seguro, capaz de tomar decisiones y apoyar a los demás. Empieza a valorar su rol en el mundo como algo más que solo ´poderoso´";
  textos[9] = "Reigen y su Crisis\nReigen, confiado y manipulador, intenta seguir con su negocio sin Mob. Pronto queda en ridículo ante el público y toca fondo. Mob lo enfrenta, pero al final lo perdona. Reigen reconoce sus errores y su relación con Mob se vuelve más sincera y equilibrada.";
  textos[10] = "Invasión de la Garra\n“La Garra” lanza su ataque final para dominar el mundo. Mob y sus amigos se enfrentan a los miembros más fuertes de la organización. En la batalla final contra el líder, Mob demuestra su madurez emocional, negándose a matar y eligiendo siempre el camino del entendimiento y la empatía.";
  textos[11] =   "Temporada 3\nÁrbol Divino y Dimple\nUn enorme árbol surge en el centro de la ciudad, alimentado por la energía de Mob. Dimple, buscando proteger a Mob, intenta usarlo para crear un mundo de felicidad artificial. Cuando Mob rechaza la idea, Dimple se sacrifica para destruir el árbol y salvar a su amigo, mostrando cuánto ha cambiado.";
  textos[12] =  "Confesión y Mob 100%\nMob se prepara para confesarle su amor a Tsubomi, pero reprime sus emociones hasta que pierde el control y su “yo interior” se desata. Se convierte en una amenaza para la ciudad. En el clímax, Mob se enfrenta a sí mismo, acepta sus emociones y se reconcilia consigo. El final simboliza su crecimiento completo como persona.";
  
  
    tiempoInicio = millis();
  
  
}


void draw(){


  println("FrameCount: " + frameCount);
  //VELOCIDAD DE VARIABLE
  miVariable1= miVariable1 +1;
  miVariable2= miVariable2 -1;


  //TEXTO
  textFont(miTexto);
  image(imagenes[pantalla], 0, 0, width, height);
  
  //DIAPOSITIVA 3
  posX++;

 if (pantalla == 0) {
   fill(#FFF815);
    textSize(30);
    text(textos[0], 10, miVariable1, width -20, height - 20);
    
  } else if (pantalla == 1) {
    fill(#1794FF);
    textSize(19);
    text(textos[1], 10, miVariable2, width -20, height - 20);
    
  } else if (pantalla == 2) {
    fill(#F70015);
    textSize(tamTexto);
    text(textos[2], 10, 10, width -20, height - 20);

    tamTexto += velocidad;
    velocidad *= 1;
    
  } else if (pantalla == 3) {
    fill(#00F727);
    textSize(30);
    text(textos[3], posX, 20, width-10, height - 10);
    posX += dir * vel;

    if (posX > 620 - 500) {
      dir = -1;
    }
    if (posX < 0) {
      dir = 1;
    }
    
  } else if (pantalla == 4) {
    fill(#FFF815);
    textSize(30);
    float x = 10 + random(-2, 2);
    float y = 10 + random(-2, 2);
    text(textos[4], x, y, width - 20, height - 20);
    
  } else if (pantalla == 5) {
    fill(#1203FF, sin(frameCount/2 * 0.1) * 127 + 128);
    textSize(30);
    text(textos[5], 10, 10, width -20, height - 20);
    
  } else if (pantalla == 6) {
    fill(#00DCF7);
    textSize(30);
    text(textos[6], 10, miVariable1, width -20, height - 20);

  } else if (pantalla == 7) {
   
    fill(#F78800);
    textSize(30);
    text(textos[6], 10, miVariable2, width -20, height - 20);

  } else if (pantalla == 8) {

    fill(#FFF815);
    textSize(tamTexto);
    text(textos[8], 10, 10, width -20, height - 20);

    tamTexto += velocidad;

  } else if (pantalla == 9) {

    fill(#FF8640);
    textSize(30);
    text(textos[9], posX, 10, width - 20, height - 20);

    posX += dir * vel;
      if (posX > 620 - 500) {
      dir = -1;
    }
    if (posX < 0) {
      dir = 1;
    }
  } else if (pantalla == 10) {

    fill(#F78800);
    textSize(30);
    float x = 10 + random(-2, 2);
    float y = 10 + random(-2, 2);
    text(textos[10], x, y, width - 20, height - 20);

  } else if (pantalla == 11) {

    fill(#FF2EB3, sin(frameCount/2 * 0.1) * 127 + 128);
    textSize(30);
    text(textos[11], 10, 10, width -20, height - 20);

  } else if (pantalla == 12) {

    fill(#FFF305, sin(frameCount/2 * 0.1) * 127 + 128);
    textSize(30);
    text(textos[12], 10, 10, width -20, height - 20);


//boton de reinicio
    fill(200);
    rect(477, 417, 80, 30);
    fill(0);
    textSize(15);
    text("Reiniciar", 490, 438);
  }
 //duracion
  int[] duraciones = {
    8000, 15000, 10000, 10000, 6000, 6000, 6000,
    6000, 6000, 6000, 6000, 6000, 6000
  };
 //tiempo de las diapositivas
  if (millis() - tiempoInicio > duraciones[pantalla]) {
    if (pantalla < imagenes.length - 1) {
      pantalla++;
      tiempoInicio = millis();
      // Reiniciar valores animados
      miVariable1 = 0;
      miVariable2 = 480;
      tamTexto = 10;
      posX = 0;
    }
  }
}

void mousePressed() {
  if (pantalla == 12) {
    if (mouseX > 477 && mouseX < 557 && mouseY > 417 && mouseY < 447) {
      pantalla = 0;
      tiempoInicio = millis();
    }
  }
}
