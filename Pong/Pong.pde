int x;
int y;
int xspeed = 4;
int yspeed = 5;
int paddlelength = 150;
void setup(){
  size(1000, 1000);
  x = width/2;
  y = height/2;
}

void draw(){
  background(200);
  x += xspeed;
  y += yspeed;
  ellipse(x, y, 50, 50);
  if(x >= width || x <= 0){
   xspeed*=-1; 
  }
  if(y <= 0){
   yspeed*=-1; 
  }
  if(y >= height){
   background(0);
    text("you loose", width/2, height/2);
  }
  rect(mouseX, 850, paddlelength, 25);
if (intersects(x, y, mouseX, 850, paddlelength)){
  xspeed++;
  xspeed*=-1;
  yspeed++;
  yspeed*=-1;
}
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}