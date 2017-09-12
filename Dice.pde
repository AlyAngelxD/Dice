void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	int x = 0;
	int y = 50;
	while (x <= 100)
	{
		while (y <= 250)
		{
			Die die1 = new Die(150+x,y);
			Die die2 = new Die(150-x,y);
			die1.show();
			die2.show();
			y = y + 100;
		}		
		x = x + 100;
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int mySize, myX, myY;
	Die(int x, int y) //constructor
	{
		mySize = 20;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(myX, myY, mySize, mySize);
	}
}
