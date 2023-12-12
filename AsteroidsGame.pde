Spaceship bob;
Star[] s = new Star[200];
ArrayList <Asteroids> lufei = new ArrayList <Asteroids> ();
ArrayList <Bullet> shots = new ArrayList <Bullet> ();
public void setup()
{
  size(700, 500);
  bob = new Spaceship();
  for (int i = 0; i < 200; i++) {
    s[i] = new Star();
  }
  for (int i = 0; i < 15; i++) {
    lufei.add(new Asteroids());
  }
  for (int i = 0; i < 5; i++) {
    shots.add(new Bullet(bob));
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
    //float d = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)lufei.get(i).getCenterX(), (float)lufei.get(i).getCenterY());
    //if ( d < 5 )
    //  lufei.remove(i);
  }
  for (int j = 0; j < shots.size(); j++) {
    shots.get(j).move();
    shots.get(j).show();
  }
  for (int i = 0; i < lufei.size(); i++) {
    for (int j = 0; j < shots.size(); j++) {
      float d = dist((float)shots.get(j).getCenterX(), (float)shots.get(j).getCenterY(), (float)lufei.get(i).getCenterX(), (float)lufei.get(i).getCenterY());
      if ( d < 25) {
        shots.remove(j);
        lufei.remove(i);
        break;
      }
    }
  }
  for (int i = 0; i < lufei.size(); i++){
     float f = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)lufei.get(i).getCenterX(), (float)lufei.get(i).getCenterY());
    if ( f < 25 )
      lufei.remove(i);
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
    bob.turn(-30);
  }
  if ( key == 'd' || key == 'D') {
    bob.turn(30);
  }
  if ( key == 'q' || key == 'Q') {
    bob.hyperspace();
  }
  if (key == 'f' || key == 'F') {
    shots.add(new Bullet(bob));
  }
}
