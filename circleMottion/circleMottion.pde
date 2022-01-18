ArrayList<CircleMotion>circle;
float[] arSpeed = {1,1.8,0.6,0.23,0.4, 1.15, 1.7, 0.52, 1.37, 0.17, 0.38, 1.63} ;
void setup(){
  size(800,800, P2D);
  circle = new ArrayList<CircleMotion>();
  for(int i = 1; i <12; i++){
    circle.add(new CircleMotion(arSpeed[i], i*30, (i+1)*20));
  }
}
void draw(){
  //background(0);
  noStroke();
  fill(0, 5);
  rect(0,0,width, height);
  for(CircleMotion cm:circle){
    cm.motion();
    for(CircleMotion t: circle){
      cm.connect(t);
    }
  } 
}
