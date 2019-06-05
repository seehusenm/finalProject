Pong P = new Pong();
Movement M = new Movement();
Scoreboard S = new Scoreboard();
Ball B = new Ball();
int pinkX= 45;
int pinkY= 255;
int blueY= 740;
int blueX= 740;
void setup(){
  background(0);
  size(800, 500);
  }

void draw(){
  background(0);
  P.Basic();
  S.Score();
  M.Paddle1();
  M.Paddle2();
  M.keyPressed();
  S.mousePressed();;  S.keepTrack();
  B.pongBall();
  B.bounce1(pinkX, pinkY, 10, 50);
  B.bounce2(blueX, blueY, 10, 50);
 }
