int x=150;
int y=500;
int w=100;
int h=40;

float point1, point2, point3, point4;

color buttonColour = color(0);

void setup() {
size (800, 600);
loadData();
fill(200,200,200);
}

Table table1;
Table table2;
//load data, people counters 2019 and 2020//

void loadData(){
table1= loadTable("PC00.05-In 2019.csv", "header");
table2= loadTable("PC00.05 In-2020.csv", "header");
}

//axis representing an array of data sensors//
void draw()
{
  fill(0);
  line(width/2, height/8, width/2, height-height/8);
  text("00", width/2.03, height/8.2);
  text("12", width/2.02, height-height/10);
  line(width/5, height/2, width-width/5, height/2);
  text("18", width/5.7, height/1.98);
  text("6", width-width/5.2, height/1.975);
  rectbutton();
  drawChart();
}

void rectbutton(){
  stroke(0);
  fill(buttonColour);
  rect(x,y,w,h);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h)
    buttonColour = color(random(255),random(255),random(255));
  }
}

void drawChart(){
  noStroke();
  fill(155,25,25,1);
  
  //Link these point values to the graph data
  point1 = 100;
  point2 = 200;
  point3 = 150;
  point4 = 100;
  
  beginShape();
  vertex(width/2, height/2-point1);
  vertex(width/2+point2, height/2);
  vertex(width/2, height/2+point3);
  vertex(width/2-point4, height/2);
  endShape();
  
}
