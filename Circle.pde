class Circle {

  float x, y;
  int r, g, b;
  float diameter = 1;
  boolean on = false;
  int size;

  void grow(int s) { 
    size=s;
    diameter+=0.5;
    // you might mess with this number a bit to get the right size, 
    //or you might pass in a variable to determine how wide it gets.
    if (diameter > s) {
      diameter = 0.3;
    }
  }

  void display(float xpos, float ypos, int red, int green, int blue) { 
    x = xpos;
    y = ypos;
    r = red;
    g = green;
    b = blue;

    noFill();
    strokeWeight(2);
    stroke(color(r, g, b), 255);
    ellipse(x, y, diameter, diameter);
  }
}