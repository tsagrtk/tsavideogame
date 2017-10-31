void setup(){
  color sky = color(0,191,255); 
  background(sky);
  fill(255);
}

void draw(){  
  PFont fontA = loadFont("courier");
  textFont(fontA, 14);
  fill(0,0,0);
  text("Hello Web!",20,20);
  size(window.innerWidth,window.innerHeight);  
}
