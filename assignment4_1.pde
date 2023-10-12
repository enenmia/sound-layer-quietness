import processing.sound.*;
SoundFile file0, file1, file2, file3;
Dot dot;
Background bg;

void setup() {
  size(900, 383);
  background(255);
  //PImage img;
  //img = loadImage("background.png");
  //background(img);
  dot = new Dot(10);
  bg = new Background();
  bg.setup();
  file0 = new SoundFile(this, "sound0.wav");
  file1 = new SoundFile(this, "sound1.wav");
  file2 = new SoundFile(this, "sound2.wav");
  file3 = new SoundFile(this, "sound3.wav");
}


void colorDetect() {

  color touching = get(int(dot.x+dot.r), int(dot.y+dot.r));

  int r = int(red(touching));
  int g = int(green(touching));
  int b = int(blue(touching));

  color oneLayer = color(22, 28, 40);
  color twoLayer = color(35, 45, 64);
  color threeLayer = color(43, 55, 79);
  color black = color(0, 0, 0);

  if (r == red(black) || g == green(black) || b == blue(black)) {
    file0.play();
    delay(10);
    file0.stop();
  } else if (r == red(oneLayer) || g == green(oneLayer) || b == blue(oneLayer)) {
    file1.play();
    delay(10);
    file1.stop();
  } else if (r == red(twoLayer) || g == green(twoLayer) || b == blue(twoLayer)) {
    file2.play();
    delay(10);
    file2.stop();
  } else if (r == red(threeLayer) || g == green(threeLayer) || b == blue(threeLayer)) {
    file3.play();
    delay(10);
    file3.stop();
  } else {
    println("you are in quiet space");
  }
}
void quietSpace() {
  if (mousePressed) {
    fill(255);
    rect(mouseX, mouseY, 30, 30);
  }
}


void draw() {
  dot.move();
  dot.draw();

  //stroke(0, 0, 0);
  colorDetect();
  quietSpace();
}
