Die bob;
void setup()
{
  size(380, 500);
  noLoop();
}

void draw()
{
  background(100, 31, 31);
  int sum = 0;
  //nested loop
  for(int y = 20; y <= 400; y += 65)
  {
    for(int x = 20; x <= 300; x += 65)
    {
      bob = new Die(x, y);
      bob.show();
      sum += bob.numRolled;
    }
  }

  fill(243, 255, 240);
  PFont font;
  font = loadFont("Georgia-Italic-48.vlw");
  textFont(font, 20);
  text("you rolled " + sum + ". wow!", 95, 450);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numRolled, myX, myY; //variable declarations here
  Die(int x , int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //code here
    numRolled = (int)(Math.random()*6)+1;
  }
  
  void show()
  {
    //code here
    noStroke();
    fill((int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX + 10 , myY + 10, 60, 60, 10);
    
    //dots
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    
    if(numRolled == 1)
    {
      ellipse(myX + 40, myY + 40, 10, 10);
    }

    if(numRolled == 2)
    {
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 55, myY + 55, 10, 10);
    }
    
    if(numRolled == 3)
    {
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 55, myY + 55, 10, 10);
    }
    
    if(numRolled == 4)
    {
      ellipse(myX + 28, myY + 28, 10, 10);
      ellipse(myX + 28, myY + 52, 10, 10);
      ellipse(myX + 52, myY + 52, 10, 10);
      ellipse(myX + 52, myY + 28, 10, 10);
    }
    
    if(numRolled == 5)
    {
      ellipse(myX + 28, myY + 28, 10, 10);
      ellipse(myX + 28, myY + 52, 10, 10);
      ellipse(myX + 52, myY + 52, 10, 10);
      ellipse(myX + 52, myY + 28, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
    
    if(numRolled == 6)
    {
      ellipse(myX + 22, myY + 30, 10, 10);
      ellipse(myX + 41, myY + 30, 10, 10);
      ellipse(myX + 60, myY + 30, 10, 10);
      ellipse(myX + 22, myY + 50, 10, 10);
      ellipse(myX + 41, myY + 50, 10, 10);
      ellipse(myX + 60, myY + 50, 10, 10);
    }
  }
}
