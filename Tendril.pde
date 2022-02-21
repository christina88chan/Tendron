class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY, endX, endY;
  private double myAngle;
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    if(myNumSegments > 20){
      strokeWeight(2);
      stroke(255, 236, 236);
    }
    int startX = myX;
    int startY = myY;
    for(int i = 0; i <= myNumSegments; i++){
        stroke(169, 123, 123);
        myAngle += ((Math.random()*40)-20)*0.01;
        endX = startX + (int)(Math.cos(myAngle)*SEG_LENGTH);
        endY = startY + (int)(Math.sin(myAngle)*SEG_LENGTH);
        line(startX,startY,endX,endY);
        startX = endX;
        startY = endY;
      }
      if(myNumSegments >= 3){
        Cluster c = new Cluster(myNumSegments/5, startX, startY);
    } 
  }
}
