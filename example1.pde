
int playerx = window.innerWidth/2;
int playery = window.innerHeight/2;
int playerspeed = 5;
boolean [] keys = {false,false,false,false};

public void setup(){
    size(window.innerWidth, window.innerHeight);
    background(0);
    frameRate(100);
}
 
public void draw(){
  smooth(); 
  background(0);
  rect(playerx,playery,20,20);   
  
  if(keys[0]){
   playerUp();
  }
  if(keys[1]){
   playerLeft();
  }
  if(keys[2]){
   playerDown();
  }
  if(keys[3]){
   playerRight();
  }
}
 
public void keyPressed(){
  println("Key code pressed: " + keyCode);
  if (key == 'w' || keyCode == UP){
    keys[0] = true;     
  }
  else if (key == 'a' || keyCode == LEFT){
    keys[1] = true;
  }
  else if (key == 's' || keyCode == DOWN){
    keys[2] = true;
  }
  else if (key == 'd' || keyCode == RIGHT){
    keys[3] = true;
  }    
}
public void keyReleased(){
  if (key == 'w' || keyCode == UP){
    keys[0] = false;
  }
  else if (key == 'a' || keyCode == LEFT){
    keys[1] = false;
  }
  else if (key == 's' || keyCode == DOWN){
    keys[2] = false;
  }
  else if (key == 'd' || keyCode == RIGHT){
    keys[3] = false;
  }    

}
 
public void playerUp(){
    playery -= playerspeed;
}
 
public void playerRight(){
    playerx += playerspeed;    
}
 
public void playerLeft(){
    playerx -= playerspeed;   
}
public void playerDown(){  
    playery += playerspeed;   
}

public class player{

}
