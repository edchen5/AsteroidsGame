Spaceship bob = new Spaceship();
Star [] joe = new Star[500];
Asteroid [] moe = new Asteroid[1];

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

  	for(int i = 0; i < moe.length; i++)
  	{
  		moe[i] = new Asteroid();
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

  	for(int i = 0; i < moe.length; i++)
  	{
  		moe[i].show();
  		moe[i].move();
  	}

  	bob.show();
  	bob.move();

  	if(left == true)
	{
		bob.turn(8);
	}

	if(right == true)
	{
		bob.turn(-8);
	}

	if(up == true)
	{
		
		bob.setDirX(0);
		bob.setDirY(0);
		bob.accelerate(2);
	}
	
	if(down == true)
	{
		
		bob.setDirX(0);
		bob.setDirY(0);
		bob.accelerate(-2);
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