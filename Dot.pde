class Dot {
  float x = 10, y = 10;
  float r = 10;

  Dot(float r) {
    this.r = r;
  }

  void draw() {
    
    noStroke();
    fill(221, 230, 237, 30);
    circle(x, y, r);

  }

  void move() {
    if (keyCode == UP) {
      y -= 1;
    } else if (keyCode == DOWN) {
      y += 1;
    } else if (keyCode == LEFT) {
      x -= 1;
    } else if (keyCode == RIGHT) {
      x += 1;
    }
    delay(20);
  }
  
  
}
