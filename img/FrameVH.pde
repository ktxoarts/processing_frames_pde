//<>//

class FrameVH extends Frame{
  float step = 5;
  int stroke_colorV=255;
  int stroke_widthV=1;
  int stroke_colorH=255;
  int stroke_widthH=1;
  boolean enableVertical=true;
  boolean enableHorizontal=true;
  FrameVH() {
  };

  FrameVH(float x1, float y1, float x2, float y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
  }

  void enableVertical(boolean val) {
    enableVertical=val;
  }
  void enableHorizontal(boolean val) {
    enableHorizontal=val;
  }

  void render() {

    // Vertical
    if ( enableVertical) {
      if ( ! externalStroke ) {
        stroke(stroke_colorV);
      }
      for (int i=0; i< (x2-x1); ) {
        line(x1+i, y1, x1+i, y2);
        i+=step;
      }
    }
    // Horizontal
    if ( enableHorizontal) {
      if ( ! externalStroke ) {
        stroke(stroke_colorH);
      }
      for (int i=0; i< (y2-y1); ) {
        line(x1, y1+i, x2, y1+i);
        i+=step;
      }
    }
  }
}
