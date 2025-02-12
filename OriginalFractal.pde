int petals = 8;
int layers = 12;
int sign = (int)(Math.random()*2)+1;
public void setup(){
  size(600,600);
  background(247, 195, 199);
  rectMode(CENTER);
  myRose(240,5);
}
public void myRose(float radius, float layers){
  if (layers == 0){
    return;
  }
  int red = 189;
  int green = 25;
  int blue = 38;
  float angle = TWO_PI/petals;
  for (int i = 0; i< petals; i++){
    float x = cos(i*angle)*radius;
    float y = sin(i*angle)*radius;
    
    if (sign ==1){
      red-=15;
      green-=15;
      blue-=16;
    }else{
      red+=15;
      green+=15;
      blue+=16;
    }
    fill(red, green, blue);
    stroke(140, 13, 23);
    ellipse(300+x,300+y, radius, radius);
    myRose(radius*0.6, layers-1);
    System.out.println(sign);
  }
}
