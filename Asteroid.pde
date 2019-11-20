class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
        corners = 14;
        xCorners = new int[corners];
        yCorners = new int[corners];

        xCorners[0] = 3;
        yCorners[0] = 14;
        xCorners[1] = 11;
        yCorners[1] = 11;
        xCorners[2] = 16;
        yCorners[2] = 6;
        xCorners[3] = 18;
        yCorners[3] = 4;
        xCorners[4] = 17;
        yCorners[4] = -5;
        xCorners[5] = 13;
        yCorners[5] = -11;
        xCorners[6] = 3;
        yCorners[6] = -17;
        xCorners[7] = -9;
        yCorners[7] = -14;
        xCorners[8] = -11;
        yCorners[8] = -11;
        xCorners[9] = -13;
        yCorners[9] = -8;
        xCorners[10] = -14;
        yCorners[10] = -6;
        xCorners[11] = -16;
        yCorners[11] = 3;
        xCorners[12] = -15;
        yCorners[12] = 4;
        xCorners[13] = -11;
        yCorners[13] = 11;

    	myColor = color(147);
    	myCenterX = Math.random() * 500;
    	myCenterY = Math.random() * 500;
    	myDirectionX = Math.random();
    	myDirectionY = Math.random();
    	myPointDirection = 0;

    	rotSpeed = (int)(Math.random() * 4);

        if(rotSpeed == 0)
        {
            rotSpeed = (int)(Math.random() * 4);
        }
	}

	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
}