Ship s;
ArrayList <Astroid> a=new ArrayList<Astroid>();
ArrayList <Bullets> b;
PVector vels=new PVector(2, 2);

void setup()
{
  size(700, 500);
  s=new Ship();
  b=new ArrayList<Bullets>();
  for (int i=0; i<10; i++)
  {
    a.add(new Astroid());
  }
}

void draw()
{
  background(0);
  s.show();
  s.turn();
  s.update();
  s.edges();

  for (Bullets c : b)
  {
    c.sow();
  }

  for (Astroid n : a)
  {
    n.show();
    n.move();
    n.edges();
    n.check();
  }

  for (int i=a.size()-1; i>-1; i--)
  {
    Astroid c=a.get(i);
    if (c.r<10)
    {
      a.remove(i);
    }
  }  
  
  textSize(30);
  text("BULLETS LEFT :"+(300-b.size()),width-300,50);
}

void keyPressed()
{
  if (keyCode==LEFT)
  {
    s.setr(-0.09);
  } else if (keyCode==RIGHT)
  {
    s.setr(0.09);
  } else  if (keyCode==UP)
  {
    s.boosting(true);
  } else if (key==' ')
  {
    b.add(new Bullets(s.pos));
  }
}
void keyReleased()
{
  s.boosting(false);
  s.setr(0);
}
