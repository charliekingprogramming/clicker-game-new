void intro() {
    background(255, 197, 72);
  
  fill(0);
  textSize(100);
  fill(37, 15, 167);
  text("click the dot", 400, 100);
  text("~THE GAME~", 400, 200);
  
  fill(240, 229, 10);
  ellipse(400, 400, 200, 200);
  rect(400, 625, 250, 150);
  
  fill(0);
  textSize(50);
  text("Play", 400, 400);
  text("Options", 400, 620);
  
  theme.play();
}


void introClicks() {
  if (dist(400, 400, mouseX, mouseY) < 100){
    
    mode = GAME;
  }
  
  
  
  if (mouseX > 275 && mouseX < 525 && mouseY > 550 && mouseY < 700) {
    
    mode = OPTIONS;

    }
  
  
    
  
  theme.pause();
  theme.rewind();
  
}
