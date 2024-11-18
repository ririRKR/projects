class star{
  star(PImage imgIn){
    pos = new PVector(random(width), random(height));
    f = 255;
        noStroke();
        img = imgIn.copy();
        int a = int(random(10, 20));
        img.resize(a,a);
  }
  
  void display(){
    tint(f);
    image(img, pos.x, pos.y);
    //circle(pos.x, pos.y, 3);
  }
  
  PVector pos;
  int f;
  PImage img;
}
