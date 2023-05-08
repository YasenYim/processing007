
void setup() {
  size(800, 800);
  stroke(93, 173, 224);
  strokeWeight(0.5);
  noFill();
}

void draw() {
  float a=map(mouseX, 0, width, 1, 5);
  float b=map(mouseY, 0, height, 1, 5);

  background(0);
  translate(width/2, height/2);


  beginShape();

  for (float d=0; d<360; d+=0.1) {
    float angle=radians(d);
    float x=cos(angle*a*4);
    float y=sin(angle*b*4);

    float xx=cos(x*a+10)*sin(y*b)*tan(x*a);
    float yy=sin(y*b+10)*cos(x*a)*tan(x);

    xx*=180;
    yy*=180;

    vertex(xx, yy);
  }
  endShape();
}
