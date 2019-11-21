Spaceship ship = new Spaceship();
Star [] sky = new Star[500];
ArrayList <Asteroid> roids = new ArrayList <Asteroid>();

boolean left = false;
boolean right = false;
boolean up = false;
boolean down = false;

int maxRoid = 10;

public void setup() 
{
	size(500, 500);
  	
  	for(int i = 0; i < sky.length; i++)
  	{
  		sky[i] = new Star();  
  	}

  	for(int i = 0; i < 10; i++)
  	{
  		roids.add(new Asteroid());
  	}
  	
  	smooth();
}

public void draw() 
{
	background(0);
  	
  	for(int i = 0; i < sky.length; i++)
  	{
  		sky[i].show();
  	}

  	for(int i = 0; i < roids.size(); i++)
  	{
  		roids.get(i).show();
    	roids.get(i).move();

    	if(dist( (float) roids.get(i).getCentX(), (float) roids.get(i).getCentY(), (float) ship.getCentX(), (float) ship.getCentY()) < 25)
    	{
    		roids.remove(i);

    		if(roids.size() == 0 && maxRoid < 50)
    		{
    			maxRoid += 2;

    			for(int j = 0; j < maxRoid; j++)
    			{
    				roids.add(new Asteroid());
    			}
    		}
    	}
  	}

  	ship.show();
  	ship.move();

  	if(left == true)
	{
		ship.turn(8);
	}

	if(right == true)
	{
		ship.turn(-8);
	}

	if(up == true)
	{
		
		ship.setDirX(0);
		ship.setDirY(0);
		ship.accelerate(2);
	}
	
	if(down == true)
	{
		ship.setDirX(0);
		ship.setDirY(0);
		ship.accelerate(-2);
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
		ship.setCenX((Math.random() * 500));
		ship.setCenY((Math.random() * 500));
		ship.setPointDir(Math.random() * 360);
		ship.setDirX(0);
		ship.setDirY(0);
	}

	
}