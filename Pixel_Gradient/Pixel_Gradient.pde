void setup() {

  size(400, 400);
}


void draw() {
  loadPixels();
  for (int i=0; i<pixels.length; i++) {
    int x=i%width;
    int y=i/width;

    float r=map(cos(x*0.01+frameCount*0.05), -1, 1, 100, 255);
    float g=map(cos(y*0.012+frameCount*0.02+sq(x*0.01)), -1, 1, 0, 255);
    float b=map(sin(frameCount*0.1), -1, 1, 0, 255);

    pixels[i]=color(r, g, b);
  }
  updatePixels();

  surface.setTitle(nf(frameRate, 2,0));
}


//这里把像 1像素横坐标，2像素纵坐标，3时间，这三个参数作为三角函数的参数
//所以算出的每个像素点的颜色不同

//也是因为每个像素都要跑好几个三角函数，所以画布变大的时候，程序会卡顿
