class Star{
  float x,y;
  float r;
  float z=random(0,width);
  float speed;
  float pspeed;
  
  Star(){
     x = random(-width/2,width/2);
     y = random(-height/2,height/2);
     speed=0;
     pspeed=speed;
  }
  
  void update(){
    z-=speed;
    if(z<1){
      x = random(-width/2,width/2);
      y = random(-height/2,height/2);
      z=width;
    }
  }
  
  
  void show(){
    float sx = map(x/z,0,1,0,width);
    float sy = map(y/z,0,1,0,height);
    r=map(z/width,0,1,1.5,5);
    noStroke();
    ellipse(sx,sy,r,r);
    if(speed>1){
    stroke(255);
    strokeWeight(min(speed,10));
    line(sx,sy,x,y);
    }
  }
  
  void reset(){
    x = random(-width/2,width/2);
    y = random(-height/2,height/2);
    speed=pspeed;
  }
}
