class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners = 9;
		xCorners = new int[corners];
    	yCorners = new int[corners];

    	xCorners[0] = 16;
    	yCorners[0] = 0;

    	xCorners[1] = 3;
    	yCorners[1] = 13;

    	xCorners[2] = -1;
    	yCorners[2] = 4;

    	xCorners[3] = -7;
    	yCorners[3] = 12;

    	xCorners[4] = -15;
    	yCorners[4] = 0;

    	xCorners[5] = -7;
    	yCorners[5] = -14;

    	xCorners[6] = 2;
    	yCorners[6] = -4;

    	xCorners[7] = 10;
    	yCorners[7] = -13;

    	xCorners[8] = 16;
    	yCorners[8] = 0;
    	
    	myColor = color(0, 255, 0);
    	myCenterX = 200;
    	myCenterY = 200;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = Math.random() * 2 * PI;

    	rotSpeed = (int)(Math.random() * 4);
	}
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
}