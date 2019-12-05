class Bullet extends Floater
{
	private double dRadians;

	public Bullet(Spaceship ship)
	{
		myCenterX = ship.getCentX();
		myCenterY = ship.getCentY();
		myPointDirection = ship.getPointDir();

		dRadians = myPointDirection*(Math.PI/180);

		myDirectionX = 5 * Math.cos(dRadians) + ship.getDirX();
		myDirectionY = 5 * Math.sin(dRadians) + ship.getDirY();

		myColor = color(255, 0, 0);
	}

	public void show()
	{
    	fill(myColor);
		stroke(myColor);
		ellipse((float) myCenterX, (float) myCenterY, 5, 5);
	}

	public double getCentX()
	{
		return myCenterX;
	}

	public double getCentY()
	{
		return myCenterY;
	}
}