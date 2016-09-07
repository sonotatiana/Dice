void setup()
{
	noLoop();
	size(400,400);
	
}
void draw()
{
	Die sam = new Die(200,200);
	sam.show();
	Die saf = new Die (150,150);
	saf.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int numDots;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		numDots = (int)(Math.random()*7);
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
