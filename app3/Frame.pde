
class Frame {
  float x1 = 0;
  float y1 = 0;
  float x2 = width;
  float y2 =height;
  boolean externalStroke=true;
  boolean externalStrokeWeight=true;
  boolean enableVertical=true;
  boolean enableHorizontal=true;
  
    int stroke_colorV=255;
  float stroke_widthV=1;
  int stroke_colorH=255;
  float stroke_widthH=1;
  Frame(
    ) {
  };

  void externalStroke(boolean val) {
    externalStroke=val;
  }
  void externalStrokeWeight(boolean val) {
    externalStrokeWeight=val;
  }
  void enableVertical(boolean val) {
    enableVertical=val;
  }
  void enableHorizontal(boolean val) {
    enableHorizontal=val;
  }

  void render() {
  };
}
