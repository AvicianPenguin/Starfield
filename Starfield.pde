Particle [] dots = new Particle [100];
void setup(){
  size(500,500);
  for(int i = 0; i<dots.length; i++){
    dots[i] = new Particle(250,250);
  }
  for(int i = 0; i<10; i++){
    dots[i] = new Oddball();
    
  }
}
void draw(){
  background(0);
   for(int i = 0; i<dots.length; i++){
     dots[i].move();
     dots[i].show();
   }
}


class Particle{
  double myX, myY, myAngle, mySpeed, myColor;
  Particle(){ 
    myX = width/2;
    myY = height/2;
    myAngle = 0;
    mySpeed = 0;
    myColor = 0;
  }
  Particle(double x, double y){
    myX = x;
    myY = y;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*3+1;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show(){
    ellipse((float)(myX),(float)(myY),5,5);
    fill((int)(myColor));
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    if(myX  > 550){
      myX = 250;
      myY = 250;
    }
    if (myX  < -10){
      myX = 250;
      myY = 250;
    }
    if(myY  > 550){
      myX = 250;
      myY = 250;
    }
    if(myY < -10){
      myX = 250;
      myY = 250;
    }
      
  }

}
class Oddball extends Particle{
  Oddball(){
    myX = (int)(Math.random()*255);
    myY = (int)(Math.random()*255);
  }
  void show(){
    ellipse((float)(myX),(float)(myY),30,30);
    fill(180,180,180);
  }
  void move(){
    if(mouseX-myX>=10)
      myX = myX + (int)(Math.random()*3)+1; // -1, 0, 1
    else if(mouseX-myX<=10)
      myX = myX + (int)(Math.random()*3)-3;
    else
      myX = myX + (int)(Math.random()*3)+1; 
      
    if(mouseY-myY>=10)
      myY = myY + (int)(Math.random()*3)+1; // -1, 0, 1
    else if(mouseY-myY<=10)
      myY = myY + (int)(Math.random()*3)-3;
    else
      myY = myY + (int)(Math.random()*3)+1; 
  }
}
