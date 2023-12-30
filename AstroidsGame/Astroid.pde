class Astroid
{
  PVector posa=new PVector(random(width), random(height));
  PVector vela=new PVector(random(-2, 2), random(-2, 2));
  float r=random(20, 50);

  void show()
  {
    pushStyle();
    noFill();
    stroke(255);
    strokeWeight(3);
    ellipse(posa.x, posa.y, r, r);
    popStyle();
  }

  void move()
  {
    posa.add(vela);
  }

  void edges()
  {
    if (posa.x-r>width)
    {
      posa.x=-r;
    }
    if (posa.x+r<0)
    {
      posa.x=width+r;
    }
    if (posa.y+r>width)
    {
      posa.y=-r;
    }
    if (posa.y+r<0)
    {
      posa.y=height+r;
    }
  }

  void check()
  {
    for (int i=b.size()-1; i>1; i--) 
    {
      Bullets f=b.get(i);
      
      if(b.size()>300)
      {
        b.remove(i);
      }
      if (dist(f.posb.x, f.posb.y, posa.x, posa.y)<r/2)
      {
        r=r/2;
        b.remove(i);
      }
    }
    
    if(dist(posa.x,posa.y,s.pos.x,s.pos.y)<r)
    {
      text("Game Over",width/2,height/2);
    }
  }
}
