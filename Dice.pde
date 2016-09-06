void setup()
{
	noLoop();
	size(400,400);
	
}
void draw()
{
	Die one = new Die(200,200);
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX = 0;
	int myY = 0;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		
	}
	void show()
	{
		fill(114,16,114);
		rect(myX,myY,50,50,15);
		fill(255);
		noStroke();
		ellipse(myX + 25,myY + 25,18,18);
	}
}
