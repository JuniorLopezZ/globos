class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      ellipse(x,y,50,100);
      image(cara,x,y);
  }
  
}

ArrayList<Globo> globos;
PImage cara;

void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  cara=loadImage("noFilter.png");
}

void draw()
{
  background(0,0,255);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
