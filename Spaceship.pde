class Spaceship extends Floater
{
  public void SpaceShip()
 {
    myCenterX = 500;
    myCenterY = 350;
    corners = 15;
    int[] xC = {0, -10, -14, -10, 0, 10, 12, 22, 20, 12, 12, 12, 20, 22, 12, 10};
    int[] yC = {14, 10, 0, -10, -14, -10, -8, -6, -4, -2, 2, 4, 6, 8, 10};
    xCorners = xC;
    yCorners = yC;

  }
  public void show() {
    stroke(255);
    super.show();
  }
  //setters
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
}
