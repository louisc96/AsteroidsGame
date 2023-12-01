class Asteroids extends Floater
{
  private int mySpeed;
  public Asteroids() {
    mySpeed = (int)(Math.random()*10-5);
    corners = 9;
    int []xC = {5, 15, 25, 20, 25, 10, 0, -5, -10};
    int []yC = {-20, -20, -10, -5, 5, 5, 15, 5, -20};
    xCorners = xC;
    yCorners = yC;
    myColor = color(127);
    myCenterX = (int)Math.random()*500;
    myCenterY = (int)Math.random()*500;
    myXspeed = (int)(Math.random()*4)-2;
    myYspeed = (int)(Math.random()*4)-2;
    myPointDirection = (int)(Math.random()*360);
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public void setMyXspeed(double x) {
    myXspeed = (double)x;
  }
  public void setMyYspeed(double y) {
    myYspeed = (double)y;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  //getters
  public int getY() {
    return (int)myCenterY;
  }
  public int getX() {
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
    rotate(mySpeed);
    super.move();
  }
}
