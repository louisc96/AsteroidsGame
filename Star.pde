class Star //note that this class does NOT extend Floater
{
  private int starX, starY, size;
  public Star() {
    starX = (int)(Math.random()*700);
    starY = (int)(Math.random()*500);
    size = (int)(Math.random()*4)+1;
  }
  public void show() {
    fill(255);
    noStroke();
    ellipse(starX, starY, size, size);
  }
}
