class Bullet extends Floater {
  public Bullet (Spaceship theShip) {
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(5);
  }
  public void show() {
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
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
