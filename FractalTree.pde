private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(150);   
	stroke(73, 114, 201);   
	line(320,480,320,380);   
	//drawBranches(??,??,??,??);  //will add later
	drawBranches(320, 380, 100, 3*Math.PI/2); 

} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here
	double ang1 = angle+branchAngle;
 	double ang2 = angle-branchAngle;
	branchLength *= fractionLength;
	int endX1 = (int)(branchLength*Math.cos(ang1)+x);
	int endY1 = (int)(branchLength*Math.sin(ang1)+y);
	int endX2 = (int)(branchLength*Math.cos(ang2)+x);
	int endY2 = (int)(branchLength*Math.sin(ang2)+y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if (branchLength >= smallestBranch){
		stroke(25,(int)(Math.random()*100)+100,(int)(Math.random()*100)+100);
		drawBranches(endX1,endY1,branchLength,ang1);
		drawBranches(endX2,endY2,branchLength,ang2);
	}
} 
