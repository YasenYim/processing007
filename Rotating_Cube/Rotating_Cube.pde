float a;   //旋转角度
float ypos; //方块中心的纵坐标
float l;   //方块边长的一半

float bd=100; //地面高度

void setup() { 
  size(400, 400); 
  l=50;
} 

void draw() { 
  background(255);   
  a+=0.03;   
  
  pushMatrix(); 
  
                //ypos 是圆心纵坐标，随着三角函数的曲线上下移动
  ypos=map(abs(sin(a*2)), 0, 1, height-bd-l, height-bd-l*1.414); 
  translate(width/2, ypos); 
  rotate(a);     
  rect(-l, -l, l*2, l*2);   
  popMatrix();   
  line(0, height-bd, width, height-bd);
} 
