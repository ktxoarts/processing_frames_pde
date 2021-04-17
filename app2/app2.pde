ArrayList<Frame> all_frames; //<>//
int stroke_color=0;
int stroke_weight=4;
int fill_color=0;


void setup() {
  size(800, 600);
  //frameRate(1);
  background(220);


  noFill();
  stroke(1);
  strokeWeight(0.4);
  /*
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
   
   frame7 = new FrameSin(600, 0, 700, height);
   */
}


FrameElipse framee = null;
FrameVH framevh = null;
int f = 0;
float s=40;
void draw() {
  
  switch(f) {
  case 0:
    framevh = new FrameVH(mouseX-s, mouseY-s, mouseX+s, mouseY+s);
    framevh.render();
    break;
  case 1:
    framee =  new FrameElipse(mouseX-s, mouseY-s, mouseX+s, mouseY+s);
    framee.render();
    break;
  case 2:
    framevh = new FrameVH(mouseX-s, mouseY-s, mouseX+s, mouseY+s);
    framevh.enableHorizontal(false);
    framevh.render();
    break;
  }

}

void mousePressed() {
  if (mouseButton == LEFT) {
    frame=null;
  }
}

void keyPressed() {

  if (key == 'r') {
    stroke_color= color(random(0, 255), random(0, 255), random(0, 255));
  } else if (key == 'w') {
    stroke_color= color(255, 255, 255);
  } else if (key == 'b') {
    stroke_color= color(0, 0, 0);
  } else if (key == 'g') {
    stroke_color= color(random(0, 255));
  }else if (key == '0') {
    f=0;
  }else if (key == '1') {
    f=1;
  }else if (key == '2') {
    f=2;
  }
      stroke(stroke_color);
}
