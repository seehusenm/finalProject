BackGround BG = new BackGround();
Scoreboard S = new Scoreboard();
Ball b = new Ball();
Players pl = new Players();
int intPink = 0;
int intBlue = 0;
int pinkX = 700;
int pinkY = 255;
int blueX = 100;
int blueY = 255;
int speed = 6;
int x=400;
int y=250;
int move=1;
int yMove=1;
boolean pinkUp = false;
boolean pinkDown = false;
//boolean pinkLeft = false;
//boolean pinkRight = false;
boolean blueUp = false;
boolean blueDown = false;
//boolean blueLeft = false;
//boolean blueRight = false;

void setup() {
  background(0);
  size(800, 500);
}

void draw() {
  background(0);
  BG.Basic();
  S.Score();
  S.keepTrack();
  S.mousePressed();
  b.Circle();
  playerPink();
  playerBlue();
  move();
  b.BouncePink(pinkX, pinkY, 15, 50);
  b.BounceBlue(blueX, blueY, 15, 50);
  b.Move();
  b.scored(intPink, intBlue);
  //ball moving
  if (move>0) {
    x+=5;
  } else {
    x-=5;
  }
  if (yMove>0) {
    // y+=5;
  } else {
    // y-=5;
  }
  if (y<=50||y>=500) {
    yMove*=-1;
  }
  if (x<=40||x>=745) {
    move*=-1;
  }
  if (x==745&&y>245&&y<325) {
  }
  
}

void keyPressed(){
  // Pink movement
  if (key == 'U' || key == 'u') {
    pinkUp = true;
  } 
  if (key == 'J' || key == 'j') {
    pinkDown = true;
  } 
  
  // Blue movement
  
  if (key == 'W' || key == 'w') {
    blueUp = true;
  } 
  if (key == 'S' || key == 's') {
    blueDown = true;
  }
}

void keyReleased(){
  // Pink movement
  if (key == 'U' || key == 'u') {
    pinkUp = false;
  } 
  if (key == 'J' || key == 'j') {
    pinkDown = false;
  } 
  
  // Blue movement
  
  if (key == 'W' || key == 'w') {
    blueUp = false;
  } 
  if (key == 'S' || key == 's') {
    blueDown = false;
  }
}


void move(){
  // Pink movement
  if (pinkUp) {
    pinkY -= speed;
    bounds();
  } 
  
  if (pinkDown) {
    pinkY += speed;
    bounds();
  } 
   
   // Blue movement
  if (blueUp) {
    blueY -= speed;
    bounds();
  } 
  if (blueDown) {
    blueY += speed;
    bounds();
  } 
  
}


public void bounds() {
  
  if (pinkY > 440) {
    pinkY = 440;
  }
  if (pinkY < 60) {
    pinkY = 60;
  
  }
  if (blueY > 440) {
    blueY = 440;
  }
  if (blueY < 60) {
    blueY = 60;
  }
}


public void playerPink() {
  noStroke();
  fill(51, 255, 255);
  rect(pinkX, pinkY, 10, 50);
}
public void playerBlue() {
    fill(255, 119, 236);
    rect(blueX, blueY, 10, 50);
}
