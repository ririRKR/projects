void setup(){
  size(500, 500);
  textAlign(CENTER);
  textSize(25);
  text("Welcome!", width/2, height/6);
  noStroke();
}

void draw(){
  fill(#FFB7B7);
  for(int i = 400; i>200; i--){
    ellipse(width*23, i, 100, 50); 
  }
  
}
