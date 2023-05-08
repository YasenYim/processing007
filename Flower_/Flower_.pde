float angle=0;    //角度

void setup() {

  size(400, 400);
  background(0);
}


void draw() {
  
  angle+=0.04;    //角速度 0.04
  
  float r=140+sin(frameCount*0.1)*60;  //半径随时间变化
  
  float xpos=width/2+cos(angle)*r;    //用半径和角度计算端点坐标值
  float ypos=height/2+sin(angle)*r;
  
  stroke(255);
  line(width/2,height/2,xpos,ypos);
  
}
