float lim, a;

public void setup()
{
	size(500, 500);
	lim = 10;
	a = 10;

}
public void draw()
{
	fill(200);
	rect(0, 0, width, height);
	noStroke();
	fill(0);
	sierpinski(500, 500, 500);
}
public void mouseDragged()//optional
{
	if(lim >= 500)
		a = 0.9;
	if(lim <= 10)
		a = 1.1;
	lim *= a;
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= lim)
	{
		triangle(x, y, x - len, y, x - len/2, y - len);
	}
	else
	{
		sierpinski(x, y, len / 2);
		sierpinski(x - len/2, y, len / 2);
		sierpinski(x - len/4, y - len/2, len / 2);
	}
}