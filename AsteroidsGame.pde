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

int hp = 3;
boolean dead = false;

int score = 0;
int highScore = 0;

public void setup() 
{
	size(500, 600);
  
  	for(int i = 0; i < sky.length; i++)
  	{
  		sky[i] = new Star();  
  	}

  	for(int i = 0; i < maxRoid; i++)
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

  	for(int j = 0; j < roids.size(); j++)
  	{
  		roids.get(j).show();
    	roids.get(j).move();

    	if(dist( (float) roids.get(j).getCentX(), (float) roids.get(j).getCentY(), (float) ship.getCentX(), (float) ship.getCentY()) < 25)
    	{
    		roids.remove(j);
    		if(frameCount > 60)
    		{
    			hp--;
    		}
    	}
	}

	for(int i = 0; i < shot.size(); i++)
	{
		shot.get(i).show();
		shot.get(i).move();

		if(shot.get(i).getCentX() >= 485 || shot.get(i).getCentX() <= 0 || shot.get(i).getCentY() >= 485 || shot.get(i).getCentY() <= 0)
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
    			score += 100;
    			break;
			}
		}
	}

	textSize(15);
	fill(255);
	text("Score: " + score, 310, 560);
  	text("Number of Asteroids: " + roids.size(), 310, 530);
  	text("HP", 10, 530);
  	text(hp + "/3", 200, 530);

	if(roids.size() == 0 && maxRoid <= 50 && dead == false)
	{
    	maxRoid += 2;

    	for(int k = 0; k < maxRoid; k++)
    	{
    		roids.add(new Asteroid());
  	 	} 

  	 	frameCount = 0;

  	 	if(hp < 3)
  	 	{
  	 		hp++;
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

	if(hp == 3)
  	{
  		for(int x = 35; x <= 135; x += 50)
	  	{
	  		fill(255, 0, 0);
	  		rect(x, 520, 50, 10);
	  	}
  	}
  	else if(hp == 2)
	{	
		for(int x = 35; x <= 85; x += 50)
	  	{
	  		fill(255, 0, 0);
	  		rect(x, 520, 50, 10);
	  	}
	}
  	else if(hp == 1)
  	{
  		fill(255, 0, 0);
  		rect(35, 520, 50, 10);
  	}
  	else
  	{
  		noLoop();
  		dead = true;
  		textAlign(CENTER);
  		textSize(50);
  		fill(255, 0, 0);
  		text("GAME OVER", 250, 250);
  		fill(255, 250, 250);
  		textSize(20);
  		text("Press R to restart", 250, 300);

  		if(highScore < score)
  		{
  			highScore = score;
  		}

  		text("Score: " + score, 250, 330);
  		text("High Score: " + highScore, 250, 360);
  		text("Number of Asteroids Destroyed: " + score / 100, 250, 390);
  		text("Most Asteroids Destroyed: " + highScore / 100, 250, 420);
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
		ship.setCentX((Math.random() * 500));
		ship.setCentY((Math.random() * 500));
		ship.setPointDir(Math.random() * 360);
		ship.setDirX(0);
		ship.setDirY(0);
	}

	if(key == ' ')
	{
		shooting = true;
	}

	if(key == 'r' && dead == true)
	{
		loop();

		dead = false;
		hp = 3;
		frameCount = 0;

		ship.setCentX(250);
		ship.setCentY(250);
		ship.setPointDir(-90);
		ship.setDirX(0);
		ship.setDirY(0);

		maxRoid = 10;
		score = 0;

		if(roids.size() < 10)
		{
			for(int i = roids.size(); i < 10; i++)
			{
				roids.add(new Asteroid());
			}
		}
	}
}
