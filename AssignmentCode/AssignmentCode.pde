int x=50;
int y=550;
int w=100;
int h=40;

float point1, point2, point3, point4;

boolean[] graphs;

//Colours mapped to buttons
color[] btnCol;

//Selection of colours
color[] colPool;

color btnCol1 = color(0);
color btnCol2 = color(0);

void setup() {
  size (800, 600);
  loadData();
  fill(200,200,200);
  
  graphs = new boolean[10];
  
  // Toggles off all graphs so none are displayed
  for(int i = 0; i < graphs.length; i++){
    graphs[i] = false;
  }
  
  btnCol = new color[10];
  
  colPool = new color[10];
  colPool[0] = color(200,25,25,100);
  colPool[1] = color(25,25,200,100);
  
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
  readyChart();
}

void readyChart(){
  for(int i = 0; i < graphs.length; i++){
    if(graphs[i])
    drawChart(i);
  }
}

void drawChart(int graphNo){
  noStroke();

  fill(colPool[graphNo]);
  
  if(graphNo == 0){
    point1 = 110;
    point2 = 130;
    point3 = 140;
    point4 = 170;
  }
  if(graphNo == 1){
    point1 = 200;
    point2 = 150;
    point3 = 100;
    point4 = 120;
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
  fill(btnCol[0]);
  rect(x,y,w,h);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      toggleGraph(0);
    }
  }
}

void rectbutton2(){
  stroke(0);
  fill(btnCol[1]);
  rect(x+w*1.5,y,w,h);
  if(mousePressed){
    if(mouseX>x+w*1.5 && mouseX <x+w*2.5 && mouseY>y && mouseY <y+h){
      toggleGraph(1);
    }
  }
}

void keyPressed(){
  if(key == '1'){
    toggleGraph(0);
  }
  if(key == '2'){
    toggleGraph(1);
  }
}

void toggleGraph(int graphNo){
  if(graphs[graphNo] == true){
    btnCol[graphNo] = color(0);
    graphs[graphNo] = false;
  }
  else{
    btnCol[graphNo] = colPool[graphNo];
    graphs[graphNo] = true;
  }
}
