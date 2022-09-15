void setup() {
  size(500, 500);  //feel free to change the size
  // noLoop(); //stops the draw() function from repeating
  frameRate(2.5);
}
void draw() {
  boolean colorChange = true;
  boolean shift = true;
  float gradDown = 255;
  float gradUp = 0;
  
  stroke((int)(Math.random() * 256), (int)(Math.random() * 200), (int)(Math.random() * 256));
  strokeWeight(3);
  for (int y = 0; y < 550; y += 40) {
    for (int x = -50; x < 600; x += 100) {
       
      if(colorChange == true) {
        
        fill(gradDown, 175, 240);
        // fill(170, 175, 240);
        colorChange = false;
      } else {
        fill (gradUp, 200, 240);
        // fill (170, 200, 240);
        colorChange = true;
      }
      gradDown -= 255/100;
      gradUp += 255/100; 
      
      if (shift == true)            
      scale(x+50, y);
      else 
      scale(x, y);
    }
    
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
  
}
void scale(int x, int y) {  
    beginShape();
    curveVertex(x,y);
    curveVertex(x,y);
    
    // curveVertex(225,200);
    curveVertex(x+30,y+50);
    curveVertex(x+70, y+50);
    // curveVertex(225,400);
    
    curveVertex(x+100,y);
    curveVertex(x+100,y);
    
    endShape();  
    
    beginShape();
    curveVertex(x,y);
    curveVertex(x,y);
    
    curveVertex(x+30, y-50);
    curveVertex(x+70, y-50);
    
    curveVertex(x+100,y);
    curveVertex(x+100,y);
    endShape();
}
