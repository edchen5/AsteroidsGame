class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 4;

    	xCorners = new int[corners];
    	yCorners = new int[corners];

    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;
        xCorners[3] = -2;
        yCorners[3] = 0;

    	myColor = color(64, 224, 208);

    	myCenterX = 250;
    	myCenterY = 250;

    	myDirectionX = 0;
    	myDirectionY = 0;
        
    	myPointDirection = -90;
    }

    public void setDirX(double x)
    {
        myDirectionX = x;
    }

    public void setDirY(double y)
    {
        myDirectionY = y;
    }

    public void setCentX(double x)
    {
        myCenterX = x;
    }

    public void setCentY(double y)
    {
        myCenterY = y;
    }

    public void setPointDir(double dir)
    {
        myPointDirection = dir;
    }

    public double getCentX()
    {
        return myCenterX;
    }

    public double getCentY()
    {
        return myCenterY;
    }

    public double getPointDir()
    {
        return myPointDirection;
    }

    public double getDirX()
    {
        return myDirectionX;
    }

    public double getDirY()
    {
        return myDirectionY;
    }
}