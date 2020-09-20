int n = 5000;
float scale = 2.5;
float ga = PI*(3.-sqrt(5));//golden angle 137.507764... or 137.5 to visualize
//https://en.wikipedia.org/wiki/Golden_angle
PImage img;
Bicubic bicubic;

void setup(){
  size(1000, 1000);
  //fullScreen();
  img = loadImage("ImpactKaeruB.png");
  bicubic = new Bicubic(img);
  //colorMode(HSB, 360, 100, 100);
  background(0);
  noStroke();
}

void draw(){
  translate(width/2, height/2);
  for(float i = 0; i < n; i++){
    float a = i * ga;
    float r = 3*scale * sqrt(i);
    float x = r*cos(a);
    float y = r*sin(a);
    float xi = constrain(map(x, -width/2, width/2, 0, img.width-1), 0, img.width-1);
    float yi = constrain(map(y, -height/2, height/2, 0, img.height-1), 0, img.height-1);
    fill(bicubic.colorAt(xi, yi));
    //fill(hue, 100, 100);
    ellipse(x, y, 5*scale, 5*scale);
  }
}
