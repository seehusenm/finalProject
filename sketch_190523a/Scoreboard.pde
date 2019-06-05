public class Scoreboard{
  int p = 0;
  int b = 0;
  int Point = 0;
  int MouseInfo;
  
  public Scoreboard(){
}
public void Score(){
  strokeWeight(6);
  stroke(51, 255, 255);
  fill(255,255,255);  
  rect(405, 2, 98, 45);
  stroke(255, 119, 236);
  rect(300, 2, 98, 45);
}
//void Point(){
//    mouseLocation p = MouseInfo.getPointerInfo().getLocation();
//    int x = p.x;
//}
void mousePressed(){
 // Point();
 //if(x < 400){
  if (mousePressed){
    
    p+=1;
 // }
 //}
 // if (x > 400){
 // if (mousePressed){
    b+=1;
 // }
  }
}
public void keepTrack(){
  fill(0,0,0);
    textSize(29);
    text(p, 350, 35);
    text(b, 450, 35);
}
}
