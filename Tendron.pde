public void setup()
{
  size(1000, 500);  
  noLoop();
}

Cluster c;
public void draw()
{
  background(55, 38, 9);
  c = new Cluster(30, 500, 250); // initial number of segments in the tendril and starting (x,y) coordinate
  stroke(0);
  fill(0);
  ellipse(200, 250, 80, 100);
  ellipse(800, 250, 80, 100);
}
public void mousePressed()
{
  redraw();
}
