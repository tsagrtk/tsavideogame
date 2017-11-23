// Simple sketch to show key pressed
int ballx=0;
int bally=0;
int speed=10;
 
public void setup(){
    size(600, 600);
    background(0);
}
 
void draw(){
  smooth(); 
  background(0);
  ellipse(ballx,bally,20,20);   
}
 
public void keyPressed(){
    println("Key code pressed: " + keyCode);
     
    if (key == 'w'){
      ballUp();
    }
    else if (key == 's'){
        ballDown();
    }
    else if (key == 'a'){
        ballLeft();
    }
    else if (key == 'd'){
        ballRight();
    }
         
}
public void keyReleased(){
    println("Just to let you know a key has been released");
}
 
public void ballUp(){
    bally = bally+speed;
}
 
public void ballRight(){
    ballx = ballx+speed;    
}
 
public void ballLeft(){
    ballx = ballx-speed;   
}
public void ballDown(){  
    bally = bally-speed;   
}