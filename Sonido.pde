import processing.sound.*;

SoundFile sonidoInicio;
SoundFile sonidoAmbiente;
SoundFile sonidoGanaste;
SoundFile sonidoLanzaTelarana;
SoundFile sonidoCaida;
SoundFile sonidoCaePlataforma;

void setup() {
  size(600, 600);
  sonidoInicio = new SoundFile(this, "Inicio.wav");
  sonidoAmbiente = new SoundFile (this, "Ambiente.wav");
  sonidoGanaste = new SoundFile (this, "Ganaste.wav");
  sonidoLanzaTelarana = new SoundFile (this, "Telaraña.wav");
  sonidoCaida = new SoundFile (this, "Caida.wav");
  sonidoCaePlataforma = new SoundFile (this, "CaePlataforma.wav");
}

void draw() {
  background(0);
}

void keyPressed() {
  if (key == 'a') {       //AMBIENTE
    sonidoInicio.stop();
    sonidoAmbiente.play();
    sonidoGanaste.stop();
    sonidoLanzaTelarana.stop();
    sonidoCaida.stop();
    sonidoCaePlataforma.stop();
  } else if (key == 'b') {  //INICIO
    sonidoInicio.play();
    sonidoAmbiente.stop();
    sonidoGanaste.stop();
    sonidoLanzaTelarana.stop();
    sonidoCaida.stop();
    sonidoCaePlataforma.stop();
  } else if (key == 'c') { //GANASTE
    sonidoInicio.stop();
    sonidoAmbiente.stop();
    sonidoGanaste.play();
    sonidoLanzaTelarana.stop();
    sonidoCaida.stop();
    sonidoCaePlataforma.stop();
  } else if (key == 'd') {  //CAIDA
    sonidoInicio.stop();    
    sonidoAmbiente.stop();
    sonidoGanaste.stop();
    sonidoCaida.play();
    sonidoLanzaTelarana.stop();
    sonidoCaePlataforma.stop();
  } else if (key == 'e'){  //LANZATELARAÑA
    sonidoInicio.stop();
    //sonidoAmbiente.stop();
    sonidoGanaste.stop();
    sonidoLanzaTelarana.play();
    sonidoCaida.stop();
    sonidoCaePlataforma.stop();
} else if (key == 'f'){  //CAE PLATAFORMA
    sonidoInicio.stop();
    sonidoAmbiente.stop();
    sonidoGanaste.stop();
    sonidoLanzaTelarana.stop();
    sonidoCaida.stop();
    sonidoCaePlataforma.play();
}
}
