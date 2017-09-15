void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	for (int j = 0; j < 3; j++)
	{
		for (int i = 0; i < 3; i++)
		{
			Die spongeBob = new Die(50+75*i,50+75*j);
			spongeBob.roll();
			spongeBob.show();
		}		
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, dieSize, dotSize;
	boolean dot1, dot2, dot3, dot4, dot5, dot6, dot7, dot8, dot9;
	double rand = (int)(Math.random()*6+1);
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		dieSize = 50;
		dotSize = 8;
	}
	void roll()
	{
		//your code here
		if (rand == 1)
		{
			dot5 = true;
		}
		else if (rand == 2)
		{
			dot3 = true;
			dot7 = true;
		}
		else if (rand == 3)
		{
			dot1 = true;
			dot5 = true;
			dot9 = true;
		}
		else if (rand == 4)
		{
			dot1 = true;
			dot3 = true;
			dot7 = true;
			dot9 = true;
		}
		else if (rand == 5)
		{
			dot1 = true;
			dot3 = true;
			dot5 = true;
			dot7 = true;
			dot9 = true;
		}
		else if (rand == 6)
		{
			dot1 = true;
			dot3 = true;
			dot4 = true;
			dot6 = true;
			dot7 = true;
			dot9 = true;
		}
	}
	void show()
	{
		fill(255);
		rect(myX, myY, dieSize, dieSize);
		//dots ordered from left to right, top to bottom
		fill(0);
		if (dot1 == true)
			ellipse(myX + (dieSize/4), myY + (dieSize/4), dotSize, dotSize);
		if (dot2 == true)
			ellipse(myX + (dieSize/2), myY + (dieSize/4), dotSize, dotSize);
		if (dot3 == true)
			ellipse(myX + (dieSize*3/4), myY + (dieSize/4), dotSize, dotSize);
		if (dot4 == true)
			ellipse(myX + (dieSize/4), myY + (dieSize/2), dotSize, dotSize);
		if (dot5 == true)
			ellipse(myX + (dieSize/2), myY + (dieSize/2), dotSize, dotSize);
		if (dot6 == true)
			ellipse(myX + (dieSize*3/4), myY + (dieSize/2), dotSize, dotSize);
		if (dot7 == true)
			ellipse(myX + (dieSize/4), myY + (dieSize*3/4), dotSize, dotSize);
		if (dot8 == true)
			ellipse(myX + (dieSize/2), myY + (dieSize*3/4), dotSize, dotSize);
		if (dot9 == true)
			ellipse(myX + (dieSize*3/4), myY + (dieSize*3/4), dotSize, dotSize);

	}
}
