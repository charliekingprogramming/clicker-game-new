import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//minim variables
Minim minim;//toolbox of functions
AudioPlayer bump, coin, theme, gameover;// idividual sound files

//Features to add
//-target bounces on edge of circle
//-target speeds up when clicked
//-make the target look interesting ( image or custom drawing)


color sand      = #FAE73A;
color brown     = #BC5611;
color blue      = #1000FF;
color yellow    = #FFFF00;
color orange    = #FFAA00;
color green     = #00FF00;
color red       = #FF0000;
color white     = #FFFFFF;
color black     = #000000;
color gray      = #555555;
color darkgreen = #2B4D13;
color greenbrown= #859878;
color grey      = #7A8970;
color beige     = #FAF095;
color lightblue = #11A5D8;

int colour= yellow; 
int highscore = 0;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

float x, y, vx, vy;

float thickness = 100;
float sliderX;
int score, lives;


void setup() {
  x = 400;
  y = 400;
  vx = random(-2, 2);
  vy = random(-2, 2);
  
  
  sliderX = 400;
  score = 0;
  lives = 3;
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  //loading sound files
  minim = new Minim(this);
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  theme= minim.loadFile("mario bros theme.mp3");
  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == OPTIONS) {
  options();
  }else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
