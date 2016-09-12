void setup()
{
	noLoop();
	size(400,400);
	
}
void draw()
{
	Die sam = new Die(200,200);
	Die saf = new Die(100,100);
	Die hai = new Die(300,300);
	
	saf.show();
	sam.show();
	hai.show();
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
	int total;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		numDots = (int)(Math.random()*6)+1;
		total = 0;
	}
	void roll()
	{
		total = numDots + total;
	}
	void show()
	{
		if(numDots == 1){
			fill(114,16,114);
			rect(myX,myY,50,50,15);
			fill(255);
			noStroke();
			ellipse(myX + 25,myY + 25,18,18);
		}
		
		else if (numDots ==2){
			fill(114,16,114);
			rect(myX,myY,50,50,15);
			fill(255);
			noStroke();
			ellipse(myX + 15, myY + 15,15,15);
			ellipse(myX + 35, myY + 35, 15,15);
		}
		else if (numDots ==3){
			fill(114,16,114);
			rect(myX,myY,50,50,15);
			fill(255);
			noStroke();
			ellipse(myX +12,myY +12,14,14);
			ellipse(myX +25,myY + 25, 14,14);
			ellipse(myX +38,myY +38, 14,14);
		}
		else if (numDots ==4){
			fill(114,16,114);
			rect(myX,myY,50,50,15);
			fill(255);
			noStroke();
			ellipse(myX + 12,myY +12,14,14);
			ellipse(myX + 38,myY +12,14,14);
			ellipse(myX + 12,myY +38,14,14);
			ellipse(myX + 38,myY +38,14,14);
		}
		else if (numDots ==5){
			fill(114,16,114);
			rect(myX,myY,50,50,15);
			fill(255);
			noStroke();
			ellipse(myX + 12,myY +12,14,14);
			ellipse(myX + 38,myY +12,14,14);
			ellipse(myX + 12,myY +38,14,14);
			ellipse(myX + 38,myY +38,14,14);
			ellipse(myX + 25,myY +25,14,14);
		}
		else {
			fill(114,16,114);
			rect(myX,myY,50,50,15);
			fill(255);
			noStroke();
			ellipse(myX +12,myY +9,12,12);
			ellipse(myX +38,myY +26,12,12);
			ellipse(myX +12,myY +42,12,12);
			ellipse(myX +38,myY +9,12,12);
			ellipse(myX +12,myY +26,12,12);
			ellipse(myX +38,myY +42,12,12);
		}
		fill(0);
		rect(185,20,40,40);
	}
}