ArrayList<Frame> all_frames; //<>// //<>//
int stroke_color=0;
boolean random_stroke=true;
int stroke_weight=4;
int fill_color=0;

FrameVH frame1, frame2, frame3;
FrameElipse frame4, frame5, frame6;
FrameCircle frame7;
FrameTriangle frame8;

void setup() {
  size(800, 400);
  frameRate(1);

  all_frames = new ArrayList<Frame>();

  frame1 = new FrameVH(0, 0, 100, height);
  frame1.stroke_colorH= color(255, 255, 0);
  frame1.stroke_colorV= color(255, 255, 0);

  frame2 = new FrameVH(100, 0, 200, height);
  frame2.stroke_colorH= color(255, 255, 0);
  frame2.stroke_colorV= color(255, 255, 0);
  frame2.enableHorizontal(false);

  frame3 = new FrameVH(200, 0, 300, height);
  frame3.enableVertical(false);


  frame4 = new FrameElipse(300, 0, 400, height);
  frame4.enableHorizontal(false);

  frame5 = new FrameElipse(400, 0, 500, height);
  frame5.enableVertical(false);
  frame5.stroke_colorH=color(255, 255, 0);

  frame6 = new FrameElipse(500, 0, 600, height);

  frame7 = new FrameCircle(600, 0, 700, height);
  
  frame7.radiusV=20;
  frame7.enableVertical(true);
  frame7.stepV=20;
  frame7.enableHorizontal(true);
  frame7.radiusH=10;
  frame7.stepH=5;

  frame8 = new FrameTriangle(700, 0, 800, height);
  
  frame8.middleH=10;
  frame8.middleV=20;
  frame8.step=10;
  
  all_frames.add(frame1);
  all_frames.add(frame2);
  all_frames.add(frame3);
  all_frames.add(frame4);
  all_frames.add(frame5);
  all_frames.add(frame6);
  all_frames.add(frame7);
  
  all_frames.add(frame8);
}



void draw() {
  background(220); 
  noFill();
  stroke(0);
  strokeWeight(0.4);
  for (int i = all_frames.size()-1; i >= 0; i--) {
    Frame p = all_frames.get(i);
    if ( random_stroke) {
      stroke(color(random(255), random(255), random(255)));
    } else {
      stroke(stroke_color);
    }
    p.render();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    stroke(color(random(255), random(255), random(255)));
  } else if (mouseButton == RIGHT) {
    stroke(color(random(255)));
  }
}

void keyPressed() {

  if (key == 'r') {
    stroke_color= color(random(0, 255), random(0, 255), random(0, 255));
    random_stroke=false;
  } else if (key == 'R') {
    random_stroke=true;
  } else if (key == 'w') {
    stroke_color= color(255, 255, 255);
    random_stroke=false;
  } else if (key == 'b') {
    stroke_color= color(0, 0, 0);
    random_stroke=false;
  } else if (key == 'g') {
    stroke_color= color(random(0, 255));
    random_stroke=false;
  }
}
