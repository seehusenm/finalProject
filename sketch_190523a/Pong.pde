public class Pong{
  public Pong(){
}
  public void Basic(){
    noStroke();
    fill(255, 119, 236);
    rect(100, 200, 10, 50);
    fill(51, 255, 255);
    rect(700, 200, 10, 50);
    fill(102, 255, 102);
    noStroke();
    rect(0, 50, 800, 10);
    rect(0, 490, 800, 10);
    //rect(0, 0, 10, 200);
    //rect(0, 300, 10, 200);
    //rect(790, 300, 10, 200);
    //rect(790, 0, 10, 200);
    fill((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(400, 225, 10, 10);
}
}
