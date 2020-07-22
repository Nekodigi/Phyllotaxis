int n = 1000;
float mult = 0.1;
float scale = 5;
float ga;//golden angle 137.507764...
int off;//offset

void setup(){
  //size(1000, 1000);
  fullScreen();
  colorMode(HSB, 360, 100, 100);
  background(0);
  noStroke();
  ga = PI*(3.-sqrt(5));//https://en.wikipedia.org/wiki/Golden_angle
}

void keyPressed(){
  if(key=='r'){
    mult = 0;
  }
}

void draw(){
  background(0);
  translate(width/2, height/2);
  fill(360);
  for(float i = 0; i < n; i++){
    float a = (i+off) * ga;//angle
    float r = scale * i;//radius
    float x = r*cos(a);
    float y = r*sin(a);
    float hue = (r+a)*mult%360;
    fill(hue, 100, 100);
    ellipse(x, y, sqrt(i)*scale*2, sqrt(i)*scale*2);
  }
  if(mousePressed)off+=ga;
  else off-= ga;
}
