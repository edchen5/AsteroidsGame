class Spaceship extends Floater  
{   
    public Starship()
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

    	myColor = 127;
    	myCenterX = 200;
    	myCenterY = 200;
    	myDirectionX = 1;
    	myDirectionY = 1;
    	myPointDirection = 0;
    }
}