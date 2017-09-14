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
