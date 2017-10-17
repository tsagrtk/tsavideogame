void setup(){
  color sky = color(0,191,255); 
  background(sky);
  fill(255);
  noLoop();
  PFont fontA = loadFont("courier");
  textFont(fontA, 14);  
}

void draw(){  
  fill(0,255,0);
  text("Hello Web!",20,20);
  size(window.innerWidth,window.innerHeight);
  ellipse(56, 46, 55, 55);
  rect(30, 20, 55, 100);
}
