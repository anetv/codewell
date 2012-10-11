Codewell[] good_code = new Codewell[500];

void setup() {
  size(400, 400);
  background(255);
  thisIs();
}

void thisIs() {
  for (int t = 0; t < good_code.length; t++) {
    int h = int(random(width-100));
    int i = int(random(height-100));
   good_code[t] = new Codewell(h,i);
   good_code[t].writeCode(); 
  }
}

void draw() {
}

void mouseClicked() {
  background(255);
  thisIs();
}

class Codewell {
  int s;
  int g;
  int c = 15;
  int e = 15;
  Codewell(int oo, int d) {
    s = oo;
    g = d;
  }
  void writeCode() {
    stroke(int(random(256)),int(random(256)),int(random(256)));
    rotate(radians(int(random(200))));
    strokeWeight(2);
    noFill();
    line(s, g, s+e, g);
    line(s+5, g, s+5, g+c);
    s+=20;
    line(s, g, s, g+10);
    arc(s+5, g+c, 10, 15, PI, TWO_PI);
    s+=20;
    line(s, g+5, s, g+c);
    s+=10;
    arc(s, g+5, 7, 7, HALF_PI, TWO_PI);
    arc(s, g+12, 7, 7, PI+HALF_PI, TWO_PI+PI);
    s+=20;
    line(s, g+5, s, g+c);
    s+=10;
    arc(s, g+5, 7, 7, HALF_PI, TWO_PI);
    arc(s, g+12, 7, 7, PI+HALF_PI, TWO_PI+PI);
    s+=20;
    ellipse(s, g+5, 7, 7);
    line(s+4, g+5, s+4, g+12);
    arc(s, g+12, 7, 7, 0, PI);
    s+=15;
    ellipse(s, g+10, 10, 10);
    s+=15;
    ellipse(s, g+10, 10, 10);
    s+=15;
    ellipse(s, g+10, 10, 10);
    line(s+6, g, s+6, g+15);
    s+=25;
    arc(s, g+10, 10, 10, QUARTER_PI, PI+HALF_PI+QUARTER_PI);
    s+=15;
    ellipse(s, g+10, 10, 10);
    s+=15;
    ellipse(s, g+10, 10, 10);
    line(s+6, g, s+6, g+15);
    s+=15;
    arc(s, g+10, 10, 10, PI, TWO_PI);
    line(s-5, g+10, s+5, g+10);
    arc(s, g+10, 10, 10, QUARTER_PI, PI);
  }
}

