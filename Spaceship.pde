class Spaceship extends Floater
{
  public Spaceship()
  {
    myCenterX = 200;
    myCenterY = 250;
    corners = 15;
    int[] xC = {0, -10, -14, -10, 0, 10, 12, 22, 20, 12, 12, 12, 20, 22, 12, 10};
    int[] yC = {14, 10, 0, -10, -14, -10, -8, -6, -4, -2, 2, 4, 6, 8, 10};
    xCorners = xC;
    yCorners = yC;
    myColor = color(0, 0, 135);
  }
  public void show() {
    stroke(255);
    super.show();
  }
  public void hyperspace() {
    myPointDirection = (int)(Math.random()*360);
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
  }
  public void setCenterX(int x) {
     myCenterX = x;
   }
   public void setCenterY(int y) {
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
}
