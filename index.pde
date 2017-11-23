public float playerx = 0;
public float playery = 0;
public float speed = 5;

void setup(){
  size(screen.width, screen.height);
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
  fill(255,215,0)
  ellipse(playerx, playery, 55, 55);
  if(keyPressed) {

  }
}
void keyPressed(){
  if(keyCode==UP || key=='w'){
    playery = playery + speed;
  } else if(keyCode==DOWN || key=='s'){
    playery = playery - speed;
  } else if(keyCode==LEFT || key=='a'){
    playerx = playerx - speed;
  } else if(keyCode==RIGHT || key=='d'){
    playerx = playerx + speed;
  }
}
