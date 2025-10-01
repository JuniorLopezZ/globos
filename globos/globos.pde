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
// pablo a pabla // 
  void dibujate()
  {
      ellipse(x,y,50,50);
      image(cara,x-25,y-25,50,50);
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
  background(0,0,0);
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
