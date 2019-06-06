public class Players{
  
  //Global variables 
  int pinkX = 45;
  int pinkY = 255;
  int blueX = 740;
  int blueY = 255;
  
  public Players(){
  }
  
  public void playerPink(){
    fill(255, 0, 0);
    rect(pinkX, pinkY, 15, 50);
  }
 
  public void playerBlue(){
    fill(0, 0, 255);
    rect(blueX, blueY, 15, 50);
  }


}
