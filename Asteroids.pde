class Asteroids extends Floater
{
  private double rotSpeed;
  public Asteroids() {
    corners = 9;
    int []xC = {5, 15, 25, 20, 25, 10, 0, -5, -10};
    int []yC = {-20, -20, -10, -5, 5, 5, 15, 5, -20};
    xCorners = xC;
    yCorners = yC;
    myColor = color(127);
    myCenterX = (int)Math.random()*500;
    myCenterY = (int)Math.random()*500;
    myXspeed = (int)(Math.random()*2)-1;
    myYspeed = (int)(Math.random()*2)-1;
    rotSpeed = Math.random()*10 - 5;
  }
  //getters
  public int getCenterY() {
    return (int)myCenterY;
  }
  public int getCenterX() {
    return (int)myCenterX;
  }
  public double getMyXspeed() {
    return myXspeed;
  }
  public double getMyYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public void show() {
    stroke(myColor);
    super.show();
  }
}
