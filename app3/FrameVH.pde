//<>//

class FrameVH extends Frame{
  float step = 5;


  FrameVH() {
  };

  FrameVH(float x1, float y1, float x2, float y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
  }


  void render() {
    //println(stroke_widthV,stroke_widthH); //<>//
    // Vertical
    if ( enableVertical) {
      if ( ! externalStroke ) {
        stroke(stroke_colorV);
      }
      if ( ! externalStrokeWeight ) {
        strokeWeight(stroke_widthV);
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
      if ( ! externalStrokeWeight ) {
        strokeWeight(stroke_widthH);
      }      
      for (int i=0; i< (y2-y1); ) {
        line(x1, y1+i, x2, y1+i);
        i+=step;
      }
    }
  }
}
