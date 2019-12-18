void options() {
  background(lightblue);
  
  
  fill(red);
ellipse(200, 400, 100, 100);

fill(yellow);
ellipse(350, 400, 100, 100);

fill(orange);
ellipse(500, 400, 100, 100);

if (mousePressed) {
 if (dist(200, 400, mouseX, mouseY) < 100) {
    colour = red;
 }
 
 
 if (dist(350, 400, mouseX, mouseY) < 100) {
    colour = yellow;
 }
 
 if (dist(500, 400, mouseX, mouseY) < 100) {
    colour = orange;
 }
 
}
 
 fill(black);
 
thickness = map(sliderX, 100, 700, 100, 5);

  
  if (mousePressed) {
    if (dist(sliderX, 650, mouseX, mouseY) < 50) {
      sliderX = mouseX;
      if (sliderX > 700) sliderX = 700;
      if (sliderX < 100) sliderX = 100;
 }
 
 
 
 
 
 }
 
 
   
   
  
 
 
  line(100, 650, 700, 650);
 ellipse(sliderX, 650, 50, 50);
 
textSize(50);
  
  fill(black);
  text("Difficulty", 400, 550);
  
  textSize(100);
  text("OPTIONS", 400, 150);
  
  
  strokeWeight(1);
fill(colour);
 ellipse(x, y, thickness + 50, thickness + 50);
  
   //movement
 x = x + vx;
 y = y + vy;
 
 //bounce top or bottom
 if(y < 50 || y > 750) vy = vy * -1;
 if (x < 50 || x > 750) vx = vx * -1;
 
 
 fill(0);
 textSize(thickness/5 + 8);
 text("main menu", x, y - 10);
 
}

void optionsClicks() {
  if (dist(mouseX, mouseY, x, y) < (thickness + 50)/2 ){
    
    
    
    mode = INTRO;
    
  
  }
    
    
  }
  
  
  
