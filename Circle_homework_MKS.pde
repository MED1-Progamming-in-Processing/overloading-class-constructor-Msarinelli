// class and variables
class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float radius;
  float rectWH;
  
  color Color;

// circle constructor
  Circle(float x, float y, float xSpeed, float ySpeed, float radius, color Color) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
    this.Color = Color;
    
  }
  
  // rect constructor
  Circle(color Color,float x, float y, float xSpeed, float ySpeed, float rectWH) {
    this.Color = Color;
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.rectWH = rectWH;
    
  }
  
  // move circle, radius/2 to make sure that the circle doesn't leave the screen
  void moveCircle() {
    x += xSpeed;
    if (x <= radius/2 || x >= width-radius/2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= radius/2 || y >= height-radius/2) {
      ySpeed *= -1;
    }
  }
  
  // move rect, rectWH/2 - same as above
  void moveRect() {
    x += xSpeed;
    if (x <= rectWH/2 || x >= width-rectWH/2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= rectWH/2 || y >= height-rectWH/2) {
      ySpeed *= -1;
    }
  }
  
  // Display
  void displayCircle(){
    fill(Color);
    ellipse(x, y, radius, radius); 
  }
  // Display
   void displayRect(){
     rectMode(CENTER);
     fill(Color);
     rect(x, y, rectWH, rectWH);
}
}
