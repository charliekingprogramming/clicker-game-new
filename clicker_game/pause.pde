void pause() {
  background(255);
  
  fill(black);
  textSize(200);
  text("PAUSE", 400, 400);
  
  
  rect(400, 600, 200, 100); 
  
  
  textSize(30);
  fill(green);
  text("PLAY", 400, 600);
  
}

void pauseClicks() {
  
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
  
  mode = GAME;
  
  
} 
  
}
