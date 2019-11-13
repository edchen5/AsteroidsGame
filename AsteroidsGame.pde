Spaceship bob = new Spaceship();
Star [] joe = new Star[500];

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
		bob.accelerate(2);
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