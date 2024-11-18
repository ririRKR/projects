class clas{
  clas(int sideIn, PVector pIn){
    pos = pIn;
    side = sideIn;
    int o = int(random(0, 3));
    if(o == 0) f = #F98948;
    else if(o == 1) f = #D66BA0;
    else if (o == 2) f = #F9DC5C;
  }
  
  void display(){
    fill(f);
    //circle(pos.x, pos.y, 30);
    if(side == 0) {pos.x+=5; rect(pos.x-width, pos.y-15, width, 30);}
    else {pos.x-=5; rect(pos.x, pos.y-15, width, 30);}
    

    
  }


  PVector pos;
  int side;
  color f;
}
