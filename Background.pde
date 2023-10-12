class Background {


  void rEll(float x, float y, float s, int num) {
    if (num == 0) {
      return;
    }
    ellipse(x, y, s, s);
    float h = s/2;
    if (random(1) < 0.5) {
      rEll(x, y, h, num-2);
    }
    if (random(1) < 0.5) {
      rEll(x+h, y, h, num-2);
    }
    if (random(1) < 0.5) {
      rEll(x, y+h, h, num-2);
    }
    if (random(1) < 0.5) {
      rEll(x+h, y+h, h, num-2);
    }
  }
    void setup() {
    background(0);
    size(400, 400);
    fill(#394867, 100);
    noStroke();
    rEll(0, 0, width, 6);
    float moon=random(400);
    //fill(#FFFEC4);
    //ellipse(moon, moon, 30, 30);
    //fill(#F4E869, 50);
    //ellipse(moon, moon, 35, 35);
    //fill(#F4E869, 50);
    //ellipse(moon, moon, 40, 40);
  }
}
