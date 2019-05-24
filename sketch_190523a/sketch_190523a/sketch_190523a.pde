Pong P = new Pong();
Movement M = new Movement();
Scoreboard S = new Scoreboard();
void setup(){
  background(0);
  size(800, 500);
}
void draw(){
  P.Basic();
  S.Score();
}
void travel(){
  M.moveBall();
}
void attack(){
  M.movePaddle1();
}
void defend(){
  M.movePaddle2();
}
