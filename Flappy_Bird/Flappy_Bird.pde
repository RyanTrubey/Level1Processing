float gravity = 1.06;
float velocity = 1;
float velocityup = 1;
int posY = 0;
int pipeX = 1920;
void setup() {
size(1920, 1080);
}
void draw() {
 background(0, 200, 255);
 fill(10, 110, 255);
 ellipse(960, posY, 40, 30);
 fill(0, 235, 0);
 rect(pipeX, 540, 47, 600);
 pipeX-=7;
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
}
void mouseClick(){
  velocityup+=1.9;
  posY-=velocityup;
  velocity=1;

}
void teleportPipes(){
  pipeX=1920;
}