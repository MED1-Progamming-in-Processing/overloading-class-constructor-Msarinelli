// Importing circle class
Circle circle;
Circle rect;

float bgColor = random(98, 101);

void setup() {
  size(300, 300);
  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), random(20, 50), color(random(255), random(255), random(255)));
  rect = new Circle(color(random(255), random(255), random(255)), random(width), random(height), random(-3, 3), random(-3, 3), random(20, 50));
  
}

void draw() {
  background(bgColor);
// Rect or circle is chosen based on background color, that is randomized above.
if (bgColor > 100) {
  circle.moveCircle();
  circle.displayCircle();
} else {
  rect.moveRect();
  rect.displayRect();
 }
}
