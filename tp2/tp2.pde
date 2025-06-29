PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10, imagen11, imagen12, imagen13;
String texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11, texto12, texto13;
PFont miTexto;

float miVariable1 = 0;
float miVariable2 = 480;
int imagenActual = 1;
int mitiempo = 0;

float textoX = 10;
float velocidadX = 2;
int direccionX = 1;

int fadeAlpha = 0;
float tamTexto = 10;
float velocidad = 0.1;

int tiempo1 = 420;

int alphaTexto = 50;
int direccionAlpha = 5;

void setup() {
  size(640, 480);
  miTexto = loadFont("Rockwell-CondensedBold-48.vlw");

  imagen1 = loadImage("portada.jpeg");
  imagen2 = loadImage("personajes.jpg");
  imagen3 = loadImage("arco fisico culturismo.jpg");
  imagen4 = loadImage("arco de hoyuelo.jpg");
  imagen5 = loadImage("arco de teru.jpg");
  imagen6 = loadImage("arco de ritsu y la garra.jpg");
  imagen7 = loadImage("arco la garra.jpg");
  imagen8 = loadImage("arco toreno y espiritu maldito.jpg");
  imagen9 = loadImage("arco psiquicos unidos.jpg");
  imagen10 = loadImage("arco de reigen.jpg");
  imagen11 = loadImage("arco invasion de la garra.jpg");
  imagen12 = loadImage("arco arbol divino.jpg");
  imagen13 = loadImage("arco de cofesion y mob 100%.jpg");

  texto1 = "¿Qué es Mob Psycho 100?\nMob Psycho 100 es un anime basado en el manga de ONE (autor de One Punch Man), protagonizado por Shigeo “Mob” Kageyama, un adolescente con enormes poderes psíquicos que solo quiere llevar una vida normal.\n\nFechas de estreno:\nTemporada 1: Julio 2016\nTemporada 2: Enero 2019\nTemporada 3: Octubre 2022";
  texto2 = "";
  texto3 = "Temporada 1\nIntroducción y Club de Telepatía\nMob es un chico tranquilo con enormes poderes psíquicos. Aunque podría usarlos para destacar, desea vivir como un adolescente normal. En la escuela, se une al Club de Mejora Física para mejorar personalmente, mientras trabaja en secreto como exorcista bajo la guía de Reigen, un farsante sin poderes que actúa como su mentor.";
  texto4 = "Culto a la Sonrisa (Dimple)\nMob investiga una secta donde las personas son obligadas a sonreír de forma permanente. Allí conoce a Dimple, un espíritu maligno que quiere volverse un dios. Mob lo derrota con su poder, pero Dimple sobrevive y comienza a seguirlo, convirtiéndose en un curioso aliado espiritual.";
  texto5 = "Teru Hanazawa\nMob se enfrenta a Teru, otro psíquico adolescente que abusa de sus habilidades y cree ser superior al resto. Durante la pelea, Mob se niega a usar su poder para dañar, demostrando que tener habilidades no justifica la violencia. Teru es derrotado y comienza a cambiar su visión del mundo.";
  texto6 = "Ritsu y la Garra\nRitsu, el hermano menor de Mob, vive frustrado por no tener poderes, pero eventualmente despierta habilidades propias. Es reclutado por un grupo llamado “La Garra”, que busca dominar a los psíquicos. Cuando es capturado, Mob arriesga todo para salvarlo.";
  texto7 = "Séptima División de la Garra\nMob, Reigen y un grupo de aliados psíquicos atacan la base de “La Garra” para rescatar niños secuestrados. Durante la misión, Reigen toma el liderazgo y da un discurso que desarma emocionalmente a los enemigos. Mob aprende que no necesita recurrir a la violencia si puede confiar en los demás.";
  texto8 = "Temporada 2\nTorneo y Espíritu Maldito\nMob participa en un torneo de culturismo para impresionar a una chica, pero es derrotado. Poco después, es contratado para exorcizar un espíritu que posee una casa. Durante el combate, se da cuenta de que el espíritu sólo quería proteger a su familia, y lo enfrenta con compasión en lugar de odio.";
  texto9 = "Psíquicos Unidos\nMob colabora con un grupo de psíquicos para resolver distintos casos sobrenaturales. Esta etapa muestra cómo Mob se convierte en un joven más seguro, capaz de tomar decisiones y apoyar a los demás. Empieza a valorar su rol en el mundo como algo más que solo 'poderoso'.";
  texto10 = "Reigen y su Crisis\nReigen, confiado y manipulador, intenta seguir con su negocio sin Mob. Pronto queda en ridículo ante el público y toca fondo. Mob lo enfrenta, pero al final lo perdona. Reigen reconoce sus errores y su relación con Mob se vuelve más sincera y equilibrada.";
  texto11 = "Invasión de la Garra\n“La Garra” lanza su ataque final para dominar el mundo. Mob y sus amigos se enfrentan a los miembros más fuertes de la organización. En la batalla final contra el líder, Mob demuestra su madurez emocional, negándose a matar y eligiendo siempre el camino del entendimiento y la empatía.";
  texto12 = "Temporada 3\nÁrbol Divino y Dimple\nUn enorme árbol surge en el centro de la ciudad, alimentado por la energía de Mob. Dimple, buscando proteger a Mob, intenta usarlo para crear un mundo de felicidad artificial. Cuando Mob rechaza la idea, Dimple se sacrifica para destruir el árbol y salvar a su amigo, mostrando cuánto ha cambiado.";
  texto13 = "Confesión y Mob 100%\nMob se prepara para confesarle su amor a Tsubomi, pero reprime sus emociones hasta que pierde el control y su “yo interior” se desata. Se convierte en una amenaza para la ciudad. En el clímax, Mob se enfrenta a sí mismo, acepta sus emociones y se reconcilia consigo. El final simboliza su crecimiento completo como persona.";
}

void draw() {
  background(0);
  textFont(miTexto);
  mitiempo++;

  if (imagenActual == 1) {
    image(imagen1, 0, 0, width, height);
    fill(#FFF815);
    textSize(25);
    text(texto1, 10, miVariable1, width - 20, height - 20);
    miVariable1=miVariable1+0.5;
    if (mitiempo >= tiempo1) {
      imagenActual = 3;
      mitiempo = 0;
      miVariable2 = 480;
    }
  } else if (imagenActual == 3) {
    image(imagen3, 0, 0, width, height);
    fill(#15D6FF);
    textSize(25);
    text(texto3, 10, miVariable2, width - 20, height - 20);
    miVariable2 -= 1;
    if (mitiempo >= tiempo1) {
      imagenActual = 4;
      mitiempo = 0;
    }
  } else if (imagenActual == 4) {
    image(imagen4, 0, 0, width, height);
    fill(#047C20);
    textSize(25);
    text(texto4, textoX, 10, width - 20, height - 20);
    textoX += velocidadX * direccionX;
    if (textoX <= 10 || textoX >= width - 610) {
      direccionX *= -1;
    }
    if (mitiempo >= tiempo1) {
      imagenActual = 5;
      mitiempo = 0;
      tamTexto = 10;
    }
  } else if (imagenActual == 5) {
    image(imagen5, 0, 0, width, height);
    fill(#FF3EFF);
    textSize(tamTexto);
    text(texto5, 10, 10, width - 20, height - 20);
    tamTexto += 0.1;
    if (mitiempo >= tiempo1) {
      imagenActual = 6;
      mitiempo = 0;
      fadeAlpha = 0;
    }
  } else if (imagenActual == 6) {
    image(imagen6, 0, 0, width, height);
    if (fadeAlpha < 255) fadeAlpha += 5;
    fill(255, fadeAlpha);
    textSize(25);
    text(texto6, 10, 10, width - 20, height - 20);
    if (mitiempo >= tiempo1) {
      imagenActual = 7;
      mitiempo = 0;
      alphaTexto = 50;
    }
  } else if (imagenActual == 7) {
    image(imagen7, 0, 0, width, height);
    alphaTexto += direccionAlpha;
    if (alphaTexto >= 255 || alphaTexto <= 50) direccionAlpha *= -2;
    fill(0, alphaTexto);
    textSize(25);
    text(texto7, 10, 10, width - 20, height - 20);
    if (mitiempo >= tiempo1) {
      imagenActual = 8;
      mitiempo = 0;
      miVariable1 = 0;
      miVariable2 = 480;
      textoX = 10;
      direccionX = 1;
      tamTexto = 10;
      fadeAlpha = 0;
      alphaTexto = 50;
      direccionAlpha = 5;
    }
  } else if (imagenActual == 8) {
    image(imagen8, 0, 0, width, height);
    fill(#FFF815);
    textSize(25);
    text(texto8, 10, miVariable1, width - 20, height - 20);
    miVariable1=miVariable1+0.5;
    
    if (mitiempo >= tiempo1) {
      imagenActual = 9;
      mitiempo = 0;
      miVariable2 = 480;
    }
  } else if (imagenActual == 9) {
    image(imagen9, 0, 0, width, height);
    fill(#15D6FF);
    textSize(25);
    text(texto9, 10, miVariable2, width - 20, height - 20);
    miVariable2 -= 1;
    if (mitiempo >= tiempo1) {
      imagenActual = 10;
      mitiempo = 0;
    }
  } else if (imagenActual == 10) {
    image(imagen10, 0, 0, width, height);
    fill(#00FF60);
    textSize(25);
    text(texto10, textoX, 10, width - 20, height - 20);
    textoX += velocidadX * direccionX;
    if (textoX <= 10 || textoX >= width - 610) {
      direccionX *= -1;
    }
    if (mitiempo >= tiempo1) {
      imagenActual = 11;
      mitiempo = 0;
      tamTexto = 10;
    }
  } else if (imagenActual == 11) {
    image(imagen11, 0, 0, width, height);
    fill(#FF3EFF);
    textSize(tamTexto);
    text(texto11, 10, 10, width - 20, height - 20);
    tamTexto += 0.1;
    if (mitiempo >= tiempo1) {
      imagenActual = 12;
      mitiempo = 0;
      fadeAlpha = 0;
    }
  } else if (imagenActual == 12) {
    image(imagen12, 0, 0, width, height);
    if (fadeAlpha < 255) fadeAlpha += 5;
    fill(255, fadeAlpha);
    textSize(25);
    text(texto12, 10, 10, width - 20, height - 20);
    if (mitiempo >= tiempo1) {
      imagenActual = 13;
      mitiempo = 0;
      alphaTexto = 50;
    }
  } else if (imagenActual == 13) {
    image(imagen13, 0, 0, width, height);
    alphaTexto += direccionAlpha;
    if (alphaTexto >= 255 || alphaTexto <= 50) direccionAlpha *= -2;
    fill(#FF0000, alphaTexto);
    textSize(25);
    text(texto13, 10, 10, width - 20, height - 20);
    fill(200);
    rect(477, 417, 80, 30);
    fill(0);
    textSize(15);
    text("Reiniciar", 490, 438);
  }
}

void mousePressed() {
  if (imagenActual == 13) {
    if (mouseX > 477 && mouseX < 557 && mouseY > 417 && mouseY < 447) {
      imagenActual = 1;
      mitiempo = 0;
      miVariable1 = 0;
      miVariable2 = 480;
      textoX = 10;
      direccionX = 1;
      tamTexto = 10;
      velocidad = 0.1;
      fadeAlpha = 0;
      alphaTexto = 50;
      direccionAlpha = 5;
    }
  }
}
