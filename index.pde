int playerx = window.innerWidth/2;
int playery = window.innerHeight/2;
float playerspeed = 3.5;
float bulletspeed = 5;
char keylastpressed = '';
boolean [] keys = {false,false,false,false,false};

Player p1;

void setup(){
    size(window.innerWidth, window.innerHeight);
    background(0);
    frameRate(100);
}
 
void draw(){
  smooth(); 
  background(0);
  
  p1 = new player();
  p1.update();
  
}
 
void keyPressed(){
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

void keyReleased(){
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
  else if (keyCode == SPACE){
    keys[4] = false;
  }

}

class player{
    player(int playerx, int playery, int playerspeed){
        this.playerx=playerx;
        this.playery=playery;
        this.playerspeed=playerspeed;       
    }
    
    void update(){
        rect(playerx,playery,20,20);
        if(keys[0]){
            playerUp();
            if(keys[4]){
                new playerbullet("UP");
            }
        }
        if(keys[1]){
            playerLeft();
            if(keys[4]){
                new playerbullet("LEFT");
            }
        }
        if(keys[2]){
            playerDown();
            if(keys[4]){
                new playerbullet("DOWN");
            }
        }
        if(keys[3]){
            playerRight();
            if(keys[4]){
                new playerbullet("RIGHT");
            }
        }
    }
    
    void playerUp(){
        playery -= playerspeed;
    }

    void playerRight(){
        playerx += playerspeed;    
    }

    void playerLeft(){
        playerx -= playerspeed;   
    }
    
    void playerDown(){  
        playery += playerspeed;   
    }
    
}
class playerbullet{
    playerbullet(String direction, int x, int y, float bulletspeed){
        this.x = playerx;
        this.y = playery;
        this.bulletspeed = bulletspeed;
        update();
    }
    void shoot(){
        switch (direction){
            case "UP":
            y -= bulletspeed;
            break;
            case "DOWN":
            y += bulletspeed;
            break;
            case "LEFT":
            x -= bulletspeed;
            break;
            case "RIGHT":
            x += bulletspeed;
            break;
        }
        update();
    }
    void update(){
        rect(x,y,50,10);
        shoot();
    }
}
