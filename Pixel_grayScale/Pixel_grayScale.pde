
void setup() {

  size(400, 400);
}


void draw() {
  float c=map(sin(frameCount*0.05),-1,1,0,255);
  background(c);
}
