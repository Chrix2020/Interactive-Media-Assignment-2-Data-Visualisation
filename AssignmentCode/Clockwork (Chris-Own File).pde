// Measurements applied to each button displaying the different data sensors and values of the people counter //
int x=50;
int y=550;
int w=100;
int h=40;

float point0, point1, point2, point3;

// Tables parsed to each graph //
Table[] PC0005;
Table[] PC0006;
Table[] PC0007;
Table[] PC0008;

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

PImage img;

void setup() {
  size (800, 600);
  fill(200, 200, 200);

  graphs = new boolean[10];

  // Toggles off all graphs so none are displayed
  for (int i = 0; i < graphs.length; i++) {
    graphs[i] = false;
  }

  btnCol = new color[10];

  colPool = new color[10];
  colPool[0] = color(200, 25, 25, 100);
  colPool[1] = color(25, 25, 200, 100);
  colPool[2] = color(100, 25, 50, 100);
  colPool[3] = color(10, 25, 70, 100); 
  colPool[4] = color(20, 25, 30, 100); 

  PC0005 = new Table[5];
  PC0005[0] = loadTable("PC00.05-In-11052020.csv");
  PC0005[1] = loadTable("PC00.05-In-12052020.csv");
  PC0005[2] = loadTable("PC00.05-In-13052020.csv");
  PC0005[3] = loadTable("PC00.05-In-14052020.csv");
  PC0005[4] = loadTable("PC00.05-In-15052020.csv");

  PC0006 = new Table[5];
  PC0006[0] = loadTable("PC00.06-In-11052020.csv");
  PC0006[1] = loadTable("PC00.06-In-12052020.csv");
  PC0006[2] = loadTable("PC00.06-In-13052020.csv");
  PC0006[3] = loadTable("PC00.06-In-14052020.csv");
  PC0006[4] = loadTable("PC00.06-In-15052020.csv");

  PC0007 = new Table[5];
  PC0007[0] = loadTable("PC00.07-In-11052020.csv");
  PC0007[1] = loadTable("PC00.07-In-12052020.csv");
  PC0007[2] = loadTable("PC00.07-In-13052020.csv");
  PC0007[3] = loadTable("PC00.07-In-14052020.csv");
  PC0007[4] = loadTable("PC00.07-In-15052020.csv");

  PC0008 = new Table[5];
  PC0008[0] = loadTable("PC00.08-In-11052020.csv");
  PC0008[1] = loadTable("PC00.08-In-12052020.csv");
  PC0008[2] = loadTable("PC00.08-In-13052020.csv");
  PC0008[3] = loadTable("PC00.08-In-14052020.csv");
  PC0008[4] = loadTable("PC00.08-In-15052020.csv");
  
}

//axis representing an array of data sensors//
void draw()
{
// Begin Radar Chart Formation //
  fill(255);
  rect(0, 0, width, height);
  fill(0);
  stroke(0);
  line(width/2, height/8, width/2, height-height/8.7);
  text("PC00.05", width/2.13, height/8.3);
  text("PC00.06", width/2.13, height-height/10.8);
  line(width/5, height/2, width-width/5, height/2);
  text("PC00.07", width/7.5, height/1.98);
  text("PC00.08", width-width/5.2, height/1.975);

  rectbutton1();
  fill(#FF0303);
  textSize(13);
  text("11/05/2020", x+11, height/1.045);
  // Button 1 //
  
  rectbutton2();
  fill(#FF0303);
  text("12/05/2020", x+161, height/1.045);
  //Button 2 //
  
  rectbutton3();
  fill(#FF0303);
  text("13/05/2020", x+311, height/1.045);
  //Button 3 //
  
  rectbutton4();
  fill(#FF0303);
  text("14/05/2020", x+461, height/1.045);
  // Button 4 //
  
  rectbutton5();
  fill(#FF0303);
  text("15/05/2020", x+611, height/1.045);
  //Button 5 //
  
  readyChart();
  Image();
  textMate();
  
}


void readyChart() {
  for (int i = 0; i < graphs.length; i++) {
    if (graphs[i])
      drawChart(i);
  }
}

void Image(){
  img= loadImage("b11.png");
  tint(255, 75);
  img.resize(610,500);
  image(img, 100, 50);
}

// Proceeds to draw all the graphs which each chart is positioned based on the maximum values of the data sensors loaded //

void drawChart(int graphNo) {
  noStroke();

  fill(colPool[graphNo]);

  if (graphNo == 0) {
    point0 = findMax(PC0005[graphNo]);
    point1 = findMax(PC0008[graphNo]);
    point2 = findMax(PC0006[graphNo]);
    point3 = findMax(PC0007[graphNo]);
  }
  if (graphNo == 1) {
    point0 = findMax(PC0005[graphNo]);
    point1 = findMax(PC0008[graphNo]);
    point2 = findMax(PC0006[graphNo]);
    point3 = findMax(PC0007[graphNo]);
  }

  if (graphNo == 2) {
    point0 = findMax(PC0005[graphNo]);
    point1 = findMax(PC0008[graphNo]);
    point2 = findMax(PC0006[graphNo]);
    point3 = findMax(PC0007[graphNo]);
  }

  if (graphNo == 3) {
    point0 = findMax(PC0005[graphNo]);
    point1 = findMax(PC0008[graphNo]);
    point2 = findMax(PC0006[graphNo]);
    point3 = findMax(PC0007[graphNo]);
  }

  if (graphNo == 4) {
    point0 = findMax(PC0005[graphNo]);
    point1 = findMax(PC0008[graphNo]);
    point2 = findMax(PC0006[graphNo]);
    point3 = findMax(PC0007[graphNo]);
  }

  beginShape();
  vertex(width/2, height/2-point0*10);
  vertex(width/2+point1*10, height/2);
  vertex(width/2, height/2+point2*10);
  vertex(width/2-point3*10, height/2);
  endShape();
}

// Each button is toggled based on the key binding of the particular graph displaying the maximum values of each people counter and its corresponding data sensor //
void rectbutton1() {
  stroke(0);
  fill(btnCol[0]);
  rect(x, y, w, h);
  if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(0);
    }
    else
    graphs[0]=true;
    
    if (graphs[0] == true){
      text("PC00.05 value: " + findMax(PC0005[0]), x, height/2+160);
      text("PC00.08 value: " + findMax(PC0008[0]), x, height/2+180);
      text("PC00.06 value: " + findMax(PC0006[0]), x, height/2+220);
      text("PC00.07 value: " + findMax(PC0007[0]), x, height/2+200);
      fill(0);
    }
    else
    graphs[0] = true;
  }
}

void rectbutton2() {
  stroke(0);
  fill(btnCol[1]);
  rect(x+w*1.5, y, w, h);
  if (mouseX>x*2+w && mouseX <x*2+w*2 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(1);
    }
    else
    graphs[1]= true;
    
    if (graphs[1] == true) {
      text("PC00.05 value: " + findMax(PC0005[1]), x, height/2+160);
      text("PC00.08 value: " + findMax(PC0008[1]), x, height/2+180);
      text("PC00.06 value: " + findMax(PC0006[1]), x, height/2+220);
      text("PC00.07 value: " + findMax(PC0007[1]), x, height/2+200);
      fill(0);
    }
    else
    graphs[1]= true;
  }
}

void rectbutton3() {
  stroke(0);
  fill(btnCol[2]);
  rect(x+w*3, y, w, h);
  if (mouseX>x*3+w*2 && mouseX <x*3+w*3 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(2);
    }
    else
    graphs[2]= true;
    
    if (graphs[2] == true) {
      text("PC00.05 value: " + findMax(PC0005[2]), x, height/2+160);
      text("PC00.08 value: " + findMax(PC0008[2]), x, height/2+180);
      text("PC00.06 value: " + findMax(PC0006[2]), x, height/2+220);
      text("PC00.07 value: " + findMax(PC0007[2]), x, height/2+200);
      fill(0);
    }
    else
    graphs[2]= true;
  }
}

void rectbutton4() {
  stroke(0);
  fill(btnCol[3]);
  rect(x+w*4.5, y, w, h);
  if (mouseX>x*4+w*3 && mouseX <x*4+w*4 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(3);
    }
    else
    graphs[3]= true;
    
    if (graphs[3] == true) {
      text("PC00.05 value: " + findMax(PC0005[3]), x, height/2+160);
      text("PC00.08 value: " + findMax(PC0008[3]), x, height/2+180);
      text("PC00.06 value: " + findMax(PC0006[3]), x, height/2+220);
      text("PC00.07 value: " + findMax(PC0007[3]), x, height/2+200);
      fill(0);
    }
    else
    graphs[3]= true;
  }
}

void rectbutton5() {
  stroke(0);
  fill(btnCol[4]);
  rect(x+w*6, y, w, h);
  if (mouseX>x*5+w*4 && mouseX <x*5+w*5 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(4);
    }
    else
    graphs[4]= true;
    
    if (graphs[4] == true) {
      text("PC00.05 value: " + findMax(PC0005[4]), x, height/2+160);
      text("PC00.08 value: " + findMax(PC0008[4]), x, height/2+180);
      text("PC00.06 value: " + findMax(PC0006[4]), x, height/2+220);
      text("PC00.07 value: " + findMax(PC0007[4]), x, height/2+200);
      fill(0);
    }
    else
    graphs[4]= true;
  }
}

//Loads a particular chart whenever a number on the keyboard is pressed //
void keyPressed() {
  if (key == '1') {
    toggleGraph(0);
  }
  else
  graphs[0]= false;

  if (key == '2') {
    toggleGraph(1);
  }
  else
  graphs[1]= false;
  
  if (key == '3') {
    toggleGraph(2);
  }
  else
  graphs[2]= false;

  if (key == '4') {
    toggleGraph(3);
  }
  else
  graphs[3]= false;
 
  if (key == '5') {
    toggleGraph(4);
  }
  else
  graphs[4]= false;

}

void toggleGraph(int graphNo) {
  if (graphs[graphNo] == true) {
    btnCol[graphNo] = color(0);
    graphs[graphNo] = false;
  } else {
    btnCol[graphNo] = colPool[graphNo];
    graphs[graphNo] = true;
  }
}

//Returns max values of each people counter//
int findMax(Table table) {
  int maxPeople = 0;

  for (int i = 0; i < table.getRowCount(); i++) {
    maxPeople = max(maxPeople, table.getInt(i, 1));
  }

  return maxPeople;
}

void textMate(){
fill(#2518ED);
text("Data Visualisation Project: KROCC", 50, 25);
text("Guide: Click on each button to see the different data sensors of", 50, 100);
text("each people counter entering the entrances of Building 11. Hover over each button to see the maximum values of the people counter. ", 50, 125);
}
