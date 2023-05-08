float n = 6;
float d = 71;

void setup() {
  size(600, 600);  
}

void draw() {
  
  n=map(mouseX,0,width,6,20);
  d=map(mouseY,0,height,50,100);
  
  background(255);
  translate(width/2, height/2);
  stroke(0);
  strokeWeight(1);

  noFill();
  stroke(#F7A34D);
  beginShape();
  for (float i = 0; i < TWO_PI; i+= (TWO_PI / 360)) {
    float k = i * d;
    float r = 250 * sin(n*k);
    float x = r * cos(k);
    float y = r * sin(k);
    vertex(x, y);
  }
  endShape();
}
