void game() {
  background(17, 165, 216);
  
   //target
 strokeWeight(1);
fill(colour);
 ellipse(x, y, thickness + 50, thickness + 50);
 

  
    stroke(255);
  fill(255);
  ellipse(250, 300, 110, 110);//clouds
  ellipse(300, 250, 110, 110);
  ellipse(350, 300, 110, 110);
  
  ellipse(550, 350, 110, 110);//clouds2
  ellipse(600, 300, 110, 110);
  ellipse(650, 350, 110, 110);
  
  ellipse(450, 600, 110, 110);//clouds2
  ellipse(500, 550, 110, 110);
  ellipse(550, 600, 110, 110);
  
  fill(255);
  rect(750, 0, 250, 70);
  
  fill(0);
  text("Pause", 710, 10);
  
  fill(0);
  textSize(40);
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 300);
  
if (score > highscore) {
  
  highscore = score;
  
}

 //movement
 x = x + vx;
 y = y + vy;
 
 //bounce top or bottom
 if(y < 50 || y > 750) vy = vy * -1;
 if (x < 50 || x > 750) vx = vx * -1;
}

void gameClicks() {
  
  if (mouseX > 620 && mouseX < 800 && mouseY > 0 && mouseY < 35) {
  lives = lives +1;
  mode = PAUSE;
  
  
}
  
  
  if ( dist(mouseX, mouseY, x, y) < (thickness + 50)/ 2) {
    score = score +1; //or: score++;
    
    coin.rewind();
    coin.play();
  } else {
    lives = lives - 1;
    if (lives == 0) {
      mode = GAMEOVER;
      bump.rewind();
      bump.play();
      lives = 3;
      score = 0;
      
  }
  }
  
 
  if (lives == 4){
    
    lives= 1;
    
  }
}
