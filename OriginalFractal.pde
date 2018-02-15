public void setup() {
  size(800,800);
  background(255);
  stroke(255);
  fractal(400,400,400);
}

public void draw() { 
}

public void fractal(int x, int y, int circleSize) {
  if (circleSize<=50) {
    fill(255-circleSize/400*255, 0, 0, 10);
    ellipse(400,400,circleSize,circleSize);
  }
  else {
    fill(255-circleSize/400*150, 40, 20, 20);
    ellipse(400+x/4, 400+y/4, circleSize, circleSize);
    ellipse(400+x/4, 400-y/4, circleSize, circleSize);
    ellipse(400-x/4, 400+y/4, circleSize, circleSize);
    ellipse(400-x/4, 400-y/4, circleSize, circleSize);
    
    fractal(x/4,y/4,circleSize/2);
  }
}