//<>//
class Constants {
  static final float RIGHT = 1;
  static final float LEFT = -1;
  static final float NONE = 0;
}


class FrameElipse extends Frame{

  float cxV= x1;
  float cyV= (y2-y1)/2;
  float cxH= (x2-x1)/2;
  float cyH= y1;
  float step = 5;
  float elipse_width=10;
  int stroke_colorV=255;
  float stroke_weightV=1;
  int stroke_colorH=255;
  float stroke_weightH=1;

  boolean enableVertical=true;
  boolean enableHorizontal=true;
  FrameElipse() {
  };
  FrameElipse(float x1, float y1, float x2, float y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.cxV = x1;
    this.cyV = y1 + (y2-y1)/2;
    this.cxH = x1 + (x2-x1)/2;
    this.cyH = y1;
  }
  FrameElipse(float x1, float y1, float x2, float y2, int stroke_colorV, float stroke_weightV, int stroke_colorH, float stroke_weightH) {
    this(x1, y1, x2, y2);
    this.stroke_colorV= stroke_colorV;
    this.stroke_weightV = stroke_weightV;
    this.stroke_colorH= stroke_colorH;
    this.stroke_weightH = stroke_weightH;
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
      if ( ! externalStroke ) {stroke(stroke_colorV);}
      if ( ! externalStrokeWeight ) {strokeWeight(stroke_weightV);}
      
      for (int i=0; i< (x2-x1); ) {
        ellipse(cxV+i, cyV, elipse_width, y2-y1);
        i+=step;
      }
    }
    // Horizontal
    if ( enableHorizontal) {
      if ( ! externalStroke ) {stroke(stroke_colorH);}
      if ( ! externalStrokeWeight ) {strokeWeight(stroke_weightH);}
      for (int i=0; i< (y2-y1); ) {
        ellipse(cxH, cyH+i,x2-x1,elipse_width);
        i+=step; //<>//
      }
    }
  }
}
