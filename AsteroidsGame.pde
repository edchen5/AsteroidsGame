Spaceship bob = new Spaceship();
Star [] joe = new Star[500];

boolean left = false;
boolean right = false;
boolean up = false;
boolean down = false;


public void setup() 
{
	size(500, 500);
  	

  	for(int i = 0; i < joe.length; i++)
  	{
  		joe[i] = new Star();  
  	}

  	smooth();
}

public void draw() 
{
	background(0);
  	
  	for(int i = 0; i < joe.length; i++)
  	{
  		joe[i].show();
  	}

  	bob.show();
  	bob.move();

  	if(left == true)
	{
		bob.turn(-10);
	}

	if(right == true)
	{
		bob.turn(10);
	}

	if(up == true)
	{
		bob.accelerate(0.2);
	}
	
	if(down == true)
	{
		bob.accelerate(-0.2);
	}
}

public void keyReleased()
{
	if(key == 'd')
	{
		left = false;
	}
	if(key == 'w')
	{
		up = false;
	}
	if(key == 'a')
	{
		right = false;
	}
	if(key == 's')
	{
		down = false;
	}
	if(key == 'e')
	{
		bob.setDirX(0);
		bob.setDirY(0);
	}
}

public void keyPressed()
{
	
	if(key == 'd')
	{
		left = true;
	}
	if(key == 'w')
	{
		up = true;
	}
	if(key == 'a')
	{
		right = true;
	}
	if(key == 's')
	{
		down = true;
	}
	
	if(key == 'q')
	{
		bob.setCenX((Math.random() * 500));
		bob.setCenY((Math.random() * 500));
		bob.setPointDir(Math.random() * 360);
		bob.setDirX(0);
		bob.setDirY(0);
	}

	
}