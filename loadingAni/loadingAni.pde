
float angle=0;    //角度
float angleSpd;    //角速度
float angle2=0;
float angleSpd2=0;

void setup() {
  size(400, 400);
  angle=-PI/2;
  angle2=-PI/2;
  stroke(255, 255, 0);
  strokeWeight(24);
  noFill();
}


void draw() {

  background(0);


  angleSpd=(sin(frameCount*0.04)+1)*PI*0.01;
  angleSpd2=(sin(frameCount*0.04+PI)+1)*PI*0.01;

  //设立了两个角度，角速度分别用不同的三角函数控制, 所以周期运动，还有节奏感

  angle+=angleSpd;
  angle2+=angleSpd2;

  //arc 的第五六个参数分别是开始角度和结束角度，并且结束角度大于开始角度
  //如果小于，则什么都不会画
  //这里同时画出两个起始角度颠倒过来的arc，就保证了有且只有一个 arc 有用。
  
  arc(width/2, height/2, 200, 200, angle2, angle);
  arc(width/2, height/2, 200, 200, angle, angle2);
}
