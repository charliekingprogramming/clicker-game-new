void gameover() {
  background(255, 0, 0);
  
  
  fill(0);
  textSize(40);
  text("High Score: " + highscore, 400, 100);
  
  
  rect(400, 600, 200, 100); 
  
  
  textSize(30);
  fill(green);
  text("Play Again?", 400, 600);
  
  
 
  
}



void gameoverClicks() {
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY <650) {
  
  mode = INTRO;
  
} 

  
}
