float gravity = 1.06;
float velocity = 1;
float velocityup = 1;
int posY = 0;
int pipeX = 1920;
int pipeY = height-400;
int pipe2X = 1920;
int pipe2Y = 0;
int posX = 960;
void setup() {
size(1920, 1080);
}
void draw() {
 boolean intersect = intersectsPipes();

 background(0, 200, 255);
  fill(0, 0, 0);
  if(intersect){
  text("You died", 960, 540);
  
 }
 fill(10, 110, 255);
 ellipse(posX, posY, 40, 30);
 fill(0, 235, 0);
 rect(pipeX, pipeY, 47, 600);
 fill(235, 0, 0);
 rect(pipe2X, pipe2Y, 47, 600);
 pipeX-=7;
 pipe2X-=7;
 posY+=velocity;
 velocity*=gravity;
 if(mousePressed){
   mouseClick();
 } else {
   velocityup=1;
   
 }
if(pipeX<=0){
  teleportPipes();
}
 if(pipeX<=10){
 pipeY = (int) random(height-400, height-250);
 pipe2Y=pipeY-1000;
 }

}
void mouseClick(){
  velocityup+=4;
  posY-=velocityup;
  velocity=1;

}
void teleportPipes(){
  pipeX=1920;
  pipe2X=1920;
}
boolean intersectsPipes() { 
     if (posY < pipe2Y && posX > pipeX && 960 < (pipeX+47)){
          return true; }
     else if (posY>pipeY && 960 > pipeX && 960 < (pipeX+47)) {
          return true; }
     else { return false; }
}