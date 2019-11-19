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

    	myColor = color(64, 224, 208);
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = -90;
    }

    public void show ()   
    {             
        fill(myColor);   
        stroke(myColor);    
        translate((float)myCenterX, (float)myCenterY);
        float dRadians = (float)(myPointDirection*(Math.PI/180));
        rotate(dRadians);

        beginShape();

        for (int nI = 0; nI < corners; nI++)
        {
          vertex(xCorners[nI], yCorners[nI]);
        }

        endShape(CLOSE);

        if(key == 'w')
        {
            stroke(255, 69, 0);
            line(-10, 6, -14, 6);
            line(-10, 0, -14 ,0);
            line(-10, -6, -14, -6);
        }

        rotate(-1*dRadians);
        translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }

    public void setDirX(double x)
    {
        myDirectionX = x;
    }

    public void setDirY(double y)
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