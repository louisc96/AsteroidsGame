//your variable declarations here
Spaceship bob;
Star[] s = new Star[200];
ArrayList <Asteroids> lufei = new ArrayList <Asteroids> ();
public void setup()
{
  size(500, 500);
  bob = new Spaceship();
  for (int i = 0; i < 200; i++) {
    s[i] = new Star();
    //System.out.println(i + " " + s[i].starX + " " + s[i].starY);
  }
  for (int i = 0; i < 25; i++) {
    lufei.add(new Asteroids());
  }
}
public void draw()
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < 200; i++) {
    s[i].show();
  }
  for (int i = 0; i < lufei.size(); i++) {
    lufei.get(i).show();
    lufei.get(i).move();
  }
}
public void keyPressed()
{
  if ( key == 'w' || key == 'W') {
    bob.accelerate(0.2);
  }
  if ( key == 's' || key == 'S') {
    bob.accelerate(-0.2);
  }
  if ( key == 'a' || key == 'A') {
    bob.turn(8);
  }
  if ( key == 'd' || key == 'D') {
    bob.turn(-8);
  }
  if ( key == 'q' || key == 'Q') {
    bob.setX((int)(Math.random()*width));
    bob.setY((int)(Math.random()*height));
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.setPointDirection((int)(Math.random()*36)*10);
  }
}
