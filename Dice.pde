Die die1 = Die(150,150);
void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	die1.show();
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
		rect(x, y, mySize, mySize);
	}
}
