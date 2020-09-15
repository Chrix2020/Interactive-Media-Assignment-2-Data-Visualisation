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
color btnCol3 = color(0);
color btnCol4 = color(0);
color btnCol5 = color(0);

boolean graphOver1 = false;
boolean graphOver2 = false;

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
  colPool[2] = color(100,25,50,100);
  colPool[3] = color(10,25,70,100); 
  colPool[4] = color(20,25,30,100); 
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
  line(width/2, height/8, width/2, height-height/8.7);
  text("PC00.05", width/2.13, height/8.3);
  text("PC00.06", width/2.13, height-height/10.8);
  line(width/5, height/2, width-width/5, height/2);
  text("PC00.07", width/7.5, height/1.98);
  text("PC00.08", width-width/5.2, height/1.975);

  rectbutton1();
  rectbutton2();
  rectbutton3();
  rectbutton4();
  rectbutton5();
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
    point1 = 18;
    point2 = 21;
    point3 = 15;
    point4 = 16;
  }
  if(graphNo == 1){
    point1 = 200;
    point2 = 150;
    point3 = 100;
    point4 = 120;
  }

  if(graphNo == 2){
    point1 = 290;
    point2 = 170;
    point3 = 70;
    point4 = 100;
  }

  if(graphNo == 3){
    point1 = 320;
    point2 = 190;
    point3 = 50;
    point4 = 80;
  }

  if(graphNo == 4){
    point1 = 30;
    point2 = 140;
    point3 = 20;
    point4 = 200;
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
    if(mouseX>x*2+w && mouseX <x*2+w*2 && mouseY>y && mouseY <y+h){
      toggleGraph(1);
    }
  }
}

void rectbutton3(){
  stroke(0);
  fill(btnCol[2]);
  rect(x+w*3,y,w,h);
  if(mousePressed){
    if(mouseX>x*3+w*2 && mouseX <x*3+w*3 && mouseY>y && mouseY <y+h){
      toggleGraph(2);
    }
  }
}

void rectbutton4(){
  stroke(0);
  fill(btnCol[3]);
  rect(x+w*4.5,y,w,h);
  if(mousePressed){
    if(mouseX>x*4+w*3 && mouseX <x*4+w*4 && mouseY>y && mouseY <y+h){
      toggleGraph(3);
    }
  }
}

void rectbutton5(){
  stroke(0);
  fill(btnCol[4]);
  rect(x+w*6,y,w,h);
  if(mousePressed){
    if(mouseX>x*5+w*4 && mouseX <x*5+w*5 && mouseY>y && mouseY <y+h){
      toggleGraph(4);
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
  if(key == '3'){
    toggleGraph(2);
  }
  if(key == '4'){
    toggleGraph(3);
  }
  if(key == '5'){
    toggleGraph(4);
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
