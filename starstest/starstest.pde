import ddf.minim.analysis.*;
import ddf.minim.*;

ArrayList<star> stars;
 
Minim minim;
AudioPlayer jingle;
AudioInput input;
FFT fft;
int[][] colo=new int[300][3];
//AudioIn in;
int a = 3;
PImage stari;
 
void setup(){
  frameRate(a);
  size(1400, 900);
  noCursor();
  stars = new ArrayList<star>();
 
  minim = new Minim(this);
  input = minim.getLineIn();
  fft = new FFT(input.bufferSize(), input.sampleRate());
  
  stari = loadImage("star.png");
}
 
void draw(){
  frameRate(a);
  background(0);
  stroke(255);
 
  fft.forward(input.mix);

  for(int i = 0; i < fft.getBand(i)/100; i++){
    stars.add(new star(stari));
  }
  
  for(int i = 0; i<stars.size(); i++){
    star s = stars.get(i);
    s.display();
    if(s.f>0){
      s.f-=10;
    } else {
      stars.remove(i);
    }
  }
}

void keyPressed(){
  a = 60;
}

void keyReleased(){
  a = 1;
}
