# finalProject

# Ping Pong and the purpose of this project is to teach me how to program a game.

   PingPong is a computer generated version of ping pong. You want to get the ball past the other players paddle. The players can only move up and down using 'u', 'w', 's', or 'j'. No need to keep score! The game will do it for you. 

### Difficulties or opportunities you encountered along the way.

   The toughest part was getting the ball to move and the score keeper. At first the paddles weren't moving at the same time, but that was a quick fix. At one point I had the ball bouncing off the paddles, then I changed something and it broke, but I fixed it again with the help of Natasha. 

### Most interesting piece of your code and explanation for what it does.

```Java
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
```
This is the code that gets the ball to bounce off the player's paddles. Once it hits it changes the direction of the ball.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* ** Megan Seehusen ** 

## Acknowledgments

* Diana and Natasha's help when my code got messy and I couldn't figure out how to move the ball. 
* Inspiration: I like to play Ping Pong.
* Worth the hard work.
