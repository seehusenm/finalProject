public class BackGround{
  
  public BackGround(){
  }
  
  public void Basic(){
    //Outside box 
    fill(102, 255, 102);
    noStroke();
    rect(0, 50, 800, 10);
    rect(0, 490, 800, 10);
    fill(255,255,255);
    rect(400, 60, 5, 430);
    //rect(0, 0, 10, 200);
    //rect(0, 300, 10, 200);
    //rect(790, 300, 10, 200);
    //rect(790, 0, 10, 200);
    fill((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    textSize(29);
    text("Score!", 200, 35);
  }
}
