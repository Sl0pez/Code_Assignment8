void setup() {
  size(600, 600);
}

void draw() {
  background(135, 206, 235);

  int h = hour();
  int m = minute();
  int s = second();


  //Sun
  noStroke();
  if (m <= 10) {
    fill(251, 227, 95);
  } else if (10 < m && m <= 20) {
    fill(255, 234, 0);
  } else if (20 < m && m<= 30) {
    fill(249, 215, 48);
  } else if (30 < m && m <= 40) {
    fill(255, 215, 0);
  } else if (40 < m && m <=50) {
    fill(227, 200, 50);
  } else if (50 < m && m <=60) {
    fill(216, 184, 6);
  }
  ellipse(width / 2, height / 2, m * 6.66 + 20, m * 6.66 + 20);

  //Umbrella stand
  if (h == 0) {
    stroke(255, 255, 0);
  } else {
    stroke(255);
  }
  strokeWeight(10);
  if (h <= 12 ) {
  line(width / 2, height / 2, 350, 225);
  } else {
  line(width / 2, height / 2, 250, 225);
  }

  //Sandbar
  noStroke();
  fill(255, 250, 205);
  ellipse(width / 2, height / 2, s * 6.66 + 20, 40);

  //Ocean
  fill(0, 119, 190);
  rect(0, 300, 600, 300);

  //Umbrella
  if (h == 0) {
    fill(255, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  if (h <=12) {
  arc(350, 225, h * 6.66 + 20, h * 6.66 + 20, PI + HALF_PI / 2, HALF_PI / 2);
  } else {
  arc(250, 225, h * 6.66, h * 6.66, HALF_PI + HALF_PI / 2, PI + HALF_PI + HALF_PI / 2);
  }
}
