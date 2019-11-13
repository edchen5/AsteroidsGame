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
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 90;
    }

    public void setDirX(double x)
    {
        myDirectionX = x;
    }

    public void setDirY(int y)
    {
        myDirectionY = y;
    }

    public void setCenX(double x)
    {
        myCenterX = x;
    }

    public void setCenY(double y)
    {
        myCenterY = y;
    }

    public void setPointDir(double dir)
    {
        myPointDirection = dir;
    }
}