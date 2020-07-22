int n = 3000;//please wait some minute
float mult = 0.001;
float scale = 3;

void setup(){
  //size(1000, 1000);
  fullScreen();
  colorMode(HSB, 360, 100, 100);
  background(0);
  noStroke();
}

void keyPressed(){
  if(key=='r'){
    mult = 0;
  }
}

void draw(){
  //background(0);
  fill(0, 10);
  rect(0, 0, width, height);
  fill(360);
  translate(width/2, height/2);
  for(float i = 0; i < n; i++){
    float a = i * radians(137.507764);//this constant is approximation. golden angle = PI*(3.-sqrt(5));
    float r = scale * pow(i/(n-1), 1-(float)frameCount/100)*n/100;
    float x = r*cos(a);
    float y = r*sin(a);
    rect(x, y, 5*scale, 5*scale);
  }
}
