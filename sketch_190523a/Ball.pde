public class Ball{
    int k;
    int x;
    int xspeed;
    int yspeed;
    int t = 240;
    int y = 240;
  public void Move(){
    t+= xspeed;
    y+= yspeed;
    bounds();
    reset();
  }
  public void bounce1(int  pX, int pY, int pW, int pH){
    if(((x-y/2 > pX && x - y/2 < pX +pW) || ( x + y/2 > pX && x +y/2 < pX + pW)) && (y> pY && y < pY + pH)){
      xspeed*= -1;
    }
  }
  public void bounce2(int  bX, int bY, int bW, int bH){
    if(((x-t/2 > bX && x - t/2 < bX +bW) || ( x + t/2 > bX && x +t/2 < bX + bW)) && (y> bY && y < bY + bH)){
      xspeed*= -1;
    }
  }
  public void pongBall(){
    noStroke();
    fill((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(402, 255, 15, 15);
    }
    
    public void bounds(){
    if(t<60){
      t=60;
    }
    if(t>440){
      t=440;
    }
    if(y<60){
      y=60;
    }
    if(y>440){
      y=440;
  }
}
void reset(){
  if(x > 770 || x < 30){
    x = width/2;
    y = height/2;
}
}
}
