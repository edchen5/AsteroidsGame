Spaceship ship = new Spaceship();

Star [] sky = new Star[500];

ArrayList <Bullet> shot = new ArrayList <Bullet>();

ArrayList <Asteroid> roids = new ArrayList <Asteroid>();

boolean left = false;
boolean right = false;
boolean up = false;
boolean down = false;
boolean shooting = false;

int maxRoid = 10;

public void setup() 
{
	size(500, 600);
  
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

  	noFill();
  	stroke(255);
  	rect(0, 500, 500, 100);

  	for(int x = 0; x <= 100; x += 50)
  	{
  		noStroke();
  		fill(255, 0, 0);
  		rect(x, 500, 50, 50);
  	}

  	for(int j = 0; j < roids.size(); j++)
  	{
  		roids.get(j).show();
    	roids.get(j).move();

    	if(dist( (float) roids.get(j).getCentX(), (float) roids.get(j).getCentY(), (float) ship.getCentX(), (float) ship.getCentY()) < 25)
    	{
    		roids.remove(j);
    	}
	}

	for(int i = 0; i < shot.size(); i++)
	{
		shot.get(i).show();
		shot.get(i).move();

		if(shot.get(i).getCentX() == 500 || shot.get(i).getCentX() == 0 || shot.get(i).getCentY() == 500 || shot.get(i).getCentY() == 0)
		{
			shot.remove(i);
		}
	}

	for(int i = 0; i < shot.size(); i++)
	{
		for(int j = 0; j < roids.size(); j++)
		{
			if(dist( (float) roids.get(j).getCentX(), (float) roids.get(j).getCentY(), (float) shot.get(i).getCentX(), (float) shot.get(i).getCentY()) < 15)
    		{
    			roids.remove(j);
    			shot.remove(i);
    			break;
			}
		}
	}

	if(roids.size() == 0 && maxRoid <= 50)
	{
	    	maxRoid += 2;

	    	for(int k = 0; k < maxRoid; k++)
	    	{
	    		roids.add(new Asteroid());
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
	
	if(shooting == true)
	{
		if(frameCount % 6 == 0)
		{
			shot.add(new Bullet(ship));

		}
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
	if(key == ' ')
	{
		shooting = false;
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

	if(key == ' ')
	{
		shooting = true;
	}
}
