
int ballx=window.innerWidth/2;
int bally=window.innerHeight/2;
int speed=10;
boolean [] keys;

public void setup(){
    size(window.innerWidth, window.innerHeight);
    background(0);
}
 
void draw(){
  smooth(); 
  background(0);
  rect(ballx,bally,20,20);   
  
  if(keys[0]){
   ballUp();
  }
  if(keys[1]){
   ballLeft();
  }
  if(keys[2]){
   ballDown();
  }
  if(keys[3]){
   ballRight();
  }
}
 
public void keyPressed(){
  println("Key code pressed: " + keyCode);
  if (key == 'w' || keyCode == UP){
    keys[0]=true;
     
  }
  else if (key == 'a' || keyCode == LEFT){
    keys[1]=true;
    ballLeft();
  }
  else if (key == 's' || keyCode == DOWN){
      keys[2]=true;
      ballDown();
  }
  else if (key == 'd' || keyCode == RIGHT){
      keys[3]=true;
      ballRight();
  }    
}
public void keyReleased(){
  if (key == 'w' || keyCode == UP){
    keys[0]=false;
  }
  else if (key == 'a' || keyCode == LEFT){
    keys[1]=false;
  }
  else if (key == 's' || keyCode == DOWN){
    keys[2]=false;
  }
  else if (key == 'd' || keyCode == RIGHT){
    keys[3]=false;
  }    

}
 
public void ballUp(){
    bally = bally-speed;
}
 
public void ballRight(){
    ballx = ballx+speed;    
}
 
public void ballLeft(){
    ballx = ballx-speed;   
}
public void ballDown(){  
    bally = bally+speed;   
}
