
class Frame {
  float x1 = 0;
  float y1 = 0;
  float x2 = width;
  float y2 =height;
  boolean externalStroke=true;
  boolean externalStrokeWeight=true;

  Frame(
    ) {
  };

  void externalStroke(boolean val) {
    externalStroke=val;
  }
  void externalStrokeWeight(boolean val) {
    externalStrokeWeight=val;
  }
  void render() {
  };
}
