public class Movement{
  int t = 240;
  int y = 240;
  
  public Movement(){
  }
  public void Paddle1(){
    noStroke();
    fill(51, 255, 255);
    rect(700, y, 10, 50);
  }
  public void Paddle2(){
    fill(255, 119, 236);
    rect(100, t, 10, 50);
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
   void keyPressed(){
    //if ( key == option){
     if (key == 'W' || key == 'w'){
      t-=5;
      bounds();
  }if(key == 'S' || key == 's'){
      t+=5;
      bounds();
  }if (key == 'U' || key == 'u'){
      y-=5;
      bounds();
  }if(key == 'J' || key == 'j'){
      y+=5;
      bounds();
}
   }
   }  
