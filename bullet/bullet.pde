
ArrayList<clas> ps;
int d = 0;
void setup(){
  noStroke();
  ps = new ArrayList<clas>();
  size(1400, 900);

}

void draw(){
  background(#3D3A4B, 1);
  if(ps.size()!=0){
    for(int i = 0; i<ps.size(); i++){
      clas p = ps.get(i);
      p.display();
      if(p.pos.x<-width*2 || p.pos.x>width*2){
        ps.remove(i);
      }
    }
  }
  
  if(d==1){
    text("BANG", width*.3, height*.3);
  } else if(d == 2){
    text("BANG", width*.3, height*.3);
     text("BANG", width*.6, height*.6);
  }
  
  
  
  
}

void mouseClicked(){
  int i = int(random(0, 2));
  if(i == 0) ps.add(new clas(i,new PVector(0, random(height))));
  if(i ==1) ps.add(new clas(i,new PVector(width, random(height))));
}

void keyPressed(){
  if(d<3) d++;
  if(d == 3) d = 0;
  textSize(50);
}
