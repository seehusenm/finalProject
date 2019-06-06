public class Ball{
  float x = 300;
  float y = 300;
  int xspeed = 6;
  float yspeed = 2.75;
  int w = 25;
  int h = 25;
  int pinkScore = 0;
  int blueScore = 0;
    
  public Ball(){
  }
  
  //Draws in ball 
  public void Circle(){
    noStroke();
    fill((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(x, y, w, h);
  }
  
  public void Move(){
    x += xspeed;
    y += yspeed;
    bounds();
    reset();
  }
  
 public void BouncePink(int rX, int rY, int rW, int rH){
    if (((x - w/2 > rX && x - w/2 < rX + rW) || (x + w/2 > rX && x + w/2 < rX + rW)) && (y > rY && y < rY + rH)) {
      xspeed *= -1;
    }
  }
  
  public void BounceBlue(int bX, int bY, int bW, int bH){
    
    if (((x + w/2 > bX && x + w/2 < bX + bW) || (x - w/2 > bX && x - w/2 < bX + bW)) && (y > bY && y < bY + bH)) {
      xspeed *= -1;
    }
    
  }
  
  void bounds(){
    if (y > 480){
      yspeed *= -1;
    }
    
    if (y < 70) {
      yspeed *= -1;
    }
    
    if (x > 800 && (y < 0 || ( y > 500 + w/2 && y < 500))) {
      xspeed *= -1;
      yspeed *= -1;
    }
    
    if (x < 0 + w/2 && (y < 0 || ( y > 500 + w/2 && y < 500))) {
      xspeed *= -1;
      yspeed *= -1;
    }
  }
  
  void reset(){
    if (x > 800){
      x = width/2;
      y = height/2;
      blueScore+=1;
    }
    else if(x < 0){
      x= width/2;
      y = height/2;
      pinkScore+=1;
    }
  }
  void scored(){
    fill(0,0,0);
    textSize(29);
    text(blueScore, 350, 35);
    fill(0,0,0);
    textSize(29);
    text(pinkScore, 450, 35);
  }
}
