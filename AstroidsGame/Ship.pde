class Ship
{
  PVector pos=new PVector(width/2, height/2);
  PVector vel=new PVector();
  float r=15;
  float heading=PI/2;
  float rot=0;
  boolean isboosting=false;

  void show()
  {
    pushStyle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(heading);
    noFill();
    stroke(255);
    triangle(-r, r, r, r, 0, -r);
    popMatrix();
    popStyle();
  }

  void turn()
  {
    heading+=rot;
  }

  void update()
  {
    if (isboosting)
    {
      boost();
    }
    pos.add(vel);
    vel.mult(0.99);
  }

  void edges()
  {
    if (pos.x-2*r>width)
    {
      pos.x=-2*r;
    }
    if (pos.x+2*r<0)
    {
      pos.x=width+2*r;
    }
    if (pos.y-2*r>height)
    {
      pos.y=-2*r;
    }
    if (pos.y+2*r<0)
    {
      pos.y=height+2*r;
    }
  }

  void boost()
  {
    vel.x=sin(heading)*2;
    vel.y=cos(heading)*-2;
  }

  void boosting(boolean t)
  {
    isboosting=t;
  }

  void setr(float angle)
  {
    rot=angle;
  }
}
