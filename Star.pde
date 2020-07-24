class Star //note that this class does NOT extend Floater
{
  private float myX, myY, mySize;
	private int myColor;
	
	public Star()
	{
  	myX = (float) Math.random() * 500;
  	myY = (float) Math.random() * 500;
  	mySize = (float)(Math.random() * 3 + 0.1);
  	myColor = color(255, 255, 255);
	}

	public void show()
	{
  	fill(myColor);
  	stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
 	}
}
