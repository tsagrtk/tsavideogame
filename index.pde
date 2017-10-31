void setup(){
  color sky = color(0,191,255); 
  background(sky);
  fill(255);
}

void draw(){  
  fill(0,255,0);
  text("Hello Web!",20,20);
  size(window.innerWidth,window.innerHeight);
  PFont fontA = loadFont("courier");
  textFont(fontA, 14);  
}
