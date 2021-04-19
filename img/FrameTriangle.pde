//<>//

class FrameTriangle extends Frame {

  float cxV= x1;
  float cyV= y1;
  float cxH= x2;
  float cyH= y1;
  float middleV=15;
  float middleH=15;
  float step = 5;
  float elipse_width=10;
  int stroke_colorV=255;
  float stroke_weightV=1;
  int stroke_colorH=255;
  float stroke_weightH=1;



  FrameTriangle() {
  };
  FrameTriangle(float x1, float y1, float x2, float y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.cxV = x1;
    this.cyV = y1;
    this.cxH = x1;
    this.cyH = y1;
    enableHorizontal(false);
  }
  FrameTriangle(float x1, float y1, float x2, float y2, int stroke_colorV, float stroke_weightV, int stroke_colorH, float stroke_weightH) {
    this(x1, y1, x2, y2);
    this.stroke_colorV= stroke_colorV;
    this.stroke_weightV = stroke_weightV;
    this.stroke_colorH= stroke_colorH;
    this.stroke_weightH = stroke_weightH;
  }

  void render() {

    // Vertical
    if ( enableVertical) {
      if ( ! externalStroke ) {
        stroke(stroke_colorV);
      }
      if ( ! externalStrokeWeight ) {
        strokeWeight(stroke_weightV);
      }
      for (int i=0; i< (x2-x1); ) {
        for (int j=0; j< (y2-y1); ) {
          line(x1+i, y1+j, x1+i+middleV, y1+j+step/2);
          line(x1+i+middleV, y1+j+step/2, x1+i, y1+j+step);
          j+=step;
        }
        i+=step;
      }
    }
    // Horizontal
    if ( enableHorizontal) {
      if ( ! externalStroke ) {
        stroke(stroke_colorH);
      }
      if ( ! externalStrokeWeight ) {
        strokeWeight(stroke_weightH);
      }
      for (int i=0; i< (y2-y1); ) {
        for (int j=0; j< (x2-x1); ) {
          line(x1+j, y1+i, x1+j+middleH, y1+i+step/2);
          line(x1+j+middleH, y1+i+step/2, x1+j+step, y1+i);

          j+=step;
        }
        i+=step;
      }
    }
  }
}
