ArrayList<FrameVH> all_frames; //<>// //<>// //<>// //<>//

float divx, divy;
float factor = 30;

void setup() {
  background(255);
  size(600, 400);
  //frameRate(1);
  divx = width/factor;
  divy = height/factor;
  all_frames = new  ArrayList<FrameVH>();
  int count=1;
  for (int j=0; j < factor; j++) {
    for (int i=0; i < factor; i++) {
      FrameVH f = new FrameVH(divx*i, divy*j, divx*(i+1), divy*(j+1));
      f.enableHorizontal(random(0, 1) >=0.5);
      f.enableVertical(random(0, 1) <0.5);
      f.externalStroke=false;
      f.stroke_colorH=color(0);
      f.stroke_colorV=color(0);
      f.step= random(1, 5);
      f.externalStrokeWeight=false;
      f.stroke_widthH=random(0.1, 1);
      f.stroke_widthV=random(0.1, 1);

      all_frames.add(f);
      count++;
    }
    println(count, divx, divy);
  }
}


FrameVH framevh = null;
int f = 0;
float s=40;
float px=-1 ;
float py=-1;

void draw() {
  background(255);

  for (int i=0; i < all_frames.size(); i++) {
    all_frames.get(i).render();
  }
  int idx = int(random(0, all_frames.size()));
  FrameVH f0 = all_frames.get(idx);
  FrameVH f = new FrameVH(f0.x1, f0.y1, f0.x2, f0.y2);
  f.render();
}
