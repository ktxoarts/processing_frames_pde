import processing.video.*; //<>//


int stroke_color=0;
int stroke_weight=4;
int fill_color=0;
boolean random_stroke= false;


int WIDTH= 640;
int HEIGHT= 480;


PImage img1;
PImage imgth;
void setup() {  
  size(640, 480);
  frameRate(500);
  background(255);
  img1 = loadImage("marilyn.jpg");
  img1.resize(WIDTH, HEIGHT);
  imgth = loadImage("marilyn_th.jpg");
  imgth.resize(WIDTH, HEIGHT);

  img1.mask(imgth);
}

int toogle=0;
void draw() {  
  strokeWeight(random(1, 5));
  background(255);
  if (toogle==0) {
    for (int i=0; i<1000; i++) {
      float x= random(0, width);
      float y =random(0, height);
      FrameVH f = new FrameVH(x, y, x+30, y+30);
      stroke(color(random(255), random(255), random(255)));
      f.render();
    }
    toogle=1;
  } else {
    for (int i=0; i<1000; i++) {
      float x= random(0, width);
      float y =random(0, height);
      FrameElipse f = new FrameElipse(x, y, x+30, y+30);
      f.step=2;
      f.elipse_width=2;
      stroke(color(random(255), random(255), random(255)));
      f.render();
    }
    toogle=0;
  }
  image(img1, 0, 0);
}
