void setup(){
  background(0,191,255);
  fill(255);
  noLoop();
  PFont fontA = loadFont("courier");
  textFont(fontA, 14);  
}

void draw(){  
  text("Hello Web!",20,20);
  size(window.innerWidth,window.innerHeight);
}
