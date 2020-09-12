int x=50;
int y=550;
int w=100;
int h=40;

float point1, point2, point3, point4;
boolean toggleGraph1 = false;
boolean toggleGraph2 = false;

color btnCol1 = color(0);
color btnCol2 = color(0);

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
  fill(255);
  rect(0,0, width, height);
  fill(0);
  stroke(0);
  line(width/2, height/8, width/2, height-height/8);
  text("00", width/2.03, height/8.2);
  text("12", width/2.02, height-height/10);
  line(width/5, height/2, width-width/5, height/2);
  text("18", width/5.7, height/1.98);
  text("6", width-width/5.2, height/1.975);
  rectbutton1();
  rectbutton2();
}

void drawChart(float point1, float point2, float point3, float point4, int colSelector){
  noStroke();
  switch(colSelector){
    case 1:
      fill(155,25,25,100);
      break;
    case 2:
      fill(25,25,155,100);
      break;
  }
  

  
  beginShape();
  vertex(width/2, height/2-point1);
  vertex(width/2+point2, height/2);
  vertex(width/2, height/2+point3);
  vertex(width/2-point4, height/2);
  endShape();
  
}

void rectbutton1(){
  stroke(0);
  fill(btnCol1);
  rect(x,y,w,h);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      if(toggleGraph1){
        btnCol1 = color(0);
        toggleGraph1 = false;
      }
      else{
        btnCol1 = color(255,50,50);
        toggleGraph1 = true;
      }
    }
  }
  if(toggleGraph1){
    drawChart(100, 200, 100, 100, 1);
  }
}

void rectbutton2(){
  stroke(0);
  fill(btnCol2);
  rect(x+w*1.5,y,w,h);
  if(mousePressed){
    if(mouseX>x+w*1.5 && mouseX <x+w*2.5 && mouseY>y && mouseY <y+h){
      if(toggleGraph1){
        btnCol2 = color(0);
        toggleGraph2 = false;
      }
      else{
        btnCol2 = color(50,50,255);
        toggleGraph2 = true;
      }
    }
  }
  if(toggleGraph2){
    drawChart(150,200, 50, 175, 2);
  }
}
