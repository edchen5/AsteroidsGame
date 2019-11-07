Spaceship bob;

public void setup() 
{
	size(500, 500);
  	bob = new Spaceship();
  	smooth();
}

public void draw() 
{
	background(0);
  	bob.show();
  	bob.move();
}

public void keyPressed()
{
	if(key == 'd')
	{
		bob.turn(-10);
	}
	if(key == 'a')
	{
		bob.turn(10);
	}
	if(key == 'w')
	{
		bob.accelerate(2);
	}
	if(key == 's')
	{
		bob.accelerate(-2);
	}
	if(key == 'h')
	{
		bob.myCenterX = (int)(Math.random() * 500);
		bob.myCenterY = (int)(Math.random() * 500);
		bob.myDirectionX = 0;
		bob.myDirectionY = 0;
	}
}