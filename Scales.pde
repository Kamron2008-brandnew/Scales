int cols = 12;
int rows = 21;
int scaleSize = 40;

void setup() {
  size(400, 400);
  noStroke();
  noLoop();
}

void draw() {
  background(20, 60, 90);
  for (int row = -1; row <= rows; row++) {
    int offset = (row % 2 == 0) ? 0 : scaleSize / 2;
    for (int col = -1; col <= cols; col++) {
      int x = col * scaleSize + offset;
      int y = row * (scaleSize / 2);
      scale(x, y);
    }
  }
}

void scale(int x, int y) {
  float hueShift = (float) Math.random() * 40;
  float sizeVariation = (float) Math.random() * 14 - 7;
  float s = scaleSize + sizeVariation;

  fill(40 + hueShift, 120 + hueShift * 0.5, 90 + hueShift * 0.3);
  arc(x + scaleSize / 2, y, s, s, PI, TWO_PI);

  fill(30 + hueShift, 90 + hueShift * 0.5, 70 + hueShift * 0.3);
  ellipse(x + scaleSize / 2, y - 4, s * 0.5, s * 0.35);

  if (Math.random() < 0.2) {
    float eyeSize = s * 0.28;
    fill(255);
    ellipse(x + scaleSize / 2, y - s * 0.12, eyeSize, eyeSize);
    fill(0);
    ellipse(x + scaleSize / 2, y - s * 0.12, eyeSize * 0.4, eyeSize * 0.4);
  }
}

