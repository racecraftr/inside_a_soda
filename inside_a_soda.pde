float bubY = 0;
float bubX = 0;

void setup() {
  size(600,600);
  colorMode(HSB,width,height,100);
  strokeWeight(3);
  stroke(0);
  noFill();
  strokeCap(ROUND);
  frameRate(40);
}

void bubble(float x, float y, float r, float sw) {
  ellipseMode(CENTER);
  stroke(mouseX, mouseY, 100);
  ellipse(x, y, r*2, r*2);
  arc(x,y, 2*r*.8 - sw, 2*r*.8 - sw, radians(259), radians(260));
  arc(x,y, 2*r*.8 - sw , 2*r*.8 - sw, radians(190), radians(245));
}

void draw() {
  background(0,0,0);
  for (int i = 0; i < 101; i++){
    bubY = random(0, height);
    bubX = random(0,width);
    bubble(bubX, bubY,   dist (mouseX, mouseY,bubX, bubY)/25 - 3 , random(1, 2.5));
  }
}
  
  