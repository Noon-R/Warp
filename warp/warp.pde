Star[] star;
int STAR_COUNT=900;
int case_number=0;
float time=0;

void setup(){
  size(400,400);
  background(0);
  star=new Star[STAR_COUNT];
  for(int i=0;i<STAR_COUNT;i++){
    star[i]= new Star();
    pushMatrix();
    translate(width/2,height/2);
    star[i].show();
    popMatrix();    
  }

}

void draw(){
  //saveFrame("Images/c######.jpg");
  switch(case_number){
    case 0:
      break;
    case 1:
     warpping();
     break;
    case 2:
      star_set();
      break;
  }
}


void warpping(){
  time+=1/frameRate;
  float easing=0.95;
  fill(0,50);
  rect(0,0,width,height);
  fill(255);
  translate(width/2,height/2);
  for(int i=0;i<STAR_COUNT;i++){
    star[i].update();
    star[i].show();
    star[i].speed=-10*sin(0.05*(time-5)*(time-5))+10;
   // star[i].speed=-0.01*(time-6.5)*(time-6.5)*(time-6.5)*(time-6.5)+20;
    //star[i].speed *= easing;
  }
  //if(!(keyPressed && key==' ')){
  //  for(int i=0;i<STAR_COUNT;i++){
  //    star[i].speed *= easing;
  //  }
  //}
  
  if (star[0].speed<=0.2){
    background(0);
    for(int i=0;i<STAR_COUNT;i++){
    star[i].speed =0;
    star[i].show();
  }
    case_number=2;
  }
}

void keyPressed(){
  if(key == TAB && (case_number==0 || case_number ==2)){
   case_number=1;
  }
}

void star_set(){
  time=0;
  for(int i=0;i<STAR_COUNT;i++){
    star[i].reset();
  }
}
