// Simple sketch to show key pressed
int ballx=window.innerWidth/2;
int bally=window.innerHeight/2;
int speed=10;
 
public void setup(){
    size(window.innerWidth, window.innerHeight);
    background(0);
}
 
void draw(){
  smooth(); 
  background(0);
  rect(ballx,bally,20,20);   
  if(keyPressed){
     keyPressed();
  }
}
 
public void keyPressed(){
    println("Key code pressed: " + keyCode);
     
    if (key == 'w' || keyCode == UP){
      ballUp();
    }
    else if (key == 's' || keyCode == DOWN){
        ballDown();
    }
    else if (key == 'a' || keyCode == LEFT){
        ballLeft();
    }
    else if (key == 'd' || keyCode == RIGHT){
        ballRight();
    }
         
}
public void keyReleased(){
    println("Just to let you know a key has been released");
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
