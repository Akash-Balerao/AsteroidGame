class Bullets
{ 
  PVector posb;
  PVector velb;
  Bullets(PVector posb1)
  {
    posb=new PVector(posb1.x, posb1.y);
    velb=new PVector(sin(s.heading), -cos(s.heading));
    velb.mult(4);
  }

  void sow()
  {
    pushStyle();
    stroke(255);
    strokeWeight(4);
    point(posb.x, posb.y);
    posb.add(velb);
    popStyle();
  }
}
