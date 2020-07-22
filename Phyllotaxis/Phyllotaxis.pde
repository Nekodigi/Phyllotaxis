int n = 100000;
float mult = 0.1;
float scale = 2.5;
float ga;//golden angle 137.507764... or 137.5 to visualize

void setup(){
  //size(400, 400);
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
  translate(width/2, height/2);
  for(float i = 0; i < n; i++){
    float a = i * ga;
    float r = 3*scale * sqrt(i);
    float x = r*cos(a);
    float y = r*sin(a);
    float hue = (a-r)*mult%360;
    fill(hue, 100, 100);
    rect(x, y, 5*scale, 5*scale);
  }
  mult+=0.01;
}
