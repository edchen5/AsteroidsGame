class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 3;

    	xCorners = new int[corners];
    	yCorners = new int[corners];

    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;

    	myColor = color(255, 0, 0);
    	myCenterX = 200;
    	myCenterY = 200;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 90;
    }
}