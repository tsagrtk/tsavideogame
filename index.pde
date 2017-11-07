void setup(){
  color sky = color(255,255,255); 
  background(sky);
  fill(255);
}

void draw(){  
  PFont fontA = loadFont("courier");
  size(10,10)
  textFont(fontA, 14);
  fill(0,0,0);
  text("Hello Web!",20,20);
  size(window.innerWidth,window.innerHeight);
  fill(255,215,0)
  ellipse(58, 46, 55, 55);
  fill(255, 165, 0);
  ellipse(58, 46, 55, 55);
}
