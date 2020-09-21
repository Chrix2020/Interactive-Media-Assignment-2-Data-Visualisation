//Values used to draw and position the buttons;
int x, y, w, h;

//Values used to draw the radar chart;
float point0, point1, point2, point3, point4;

// Tables parsed to each graph //
Table[] PC0005;
Table[] PC0006;
Table[] PC0007;
Table[] PC0008;

//Contains booleans for each graph
//Checked to see whether or not the graph is to be displayed
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

PImage img1;
PImage img2;
PImage img3;

void setup() {
  size (1280, 720);
  fill(200, 200, 200);
  
  x = 0+width/15;
  y = height-height/13;
  w = width/10;
  h = w/3;

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
  fill(255);
  rect(0, 0, width, height);
  fill(0);
  stroke(0);
  line(width/2, height/8, width/2, height-height/8.7);
  text("PC00.05", width/2.11, height/8.3);
  text("PC00.06", width/2.11, height-height/10.8);
  line(width/2+(height-height/8.7-height/8)/2, height/2, width/2, height/2);
  line(width/2-(height-height/8.7-height/8)/2, height/2, width/2, height/2);
  text("PC00.07", width/2-(height-height/8.7-height/8)/1.65, height/1.975);
  text("PC00.08", width/2+(height-height/8.7-height/8)/2, height/1.98);

  
  textSize(28);
  text("Data Visualisation - People Counters (B11)", 0+x/3, x/3);
  textSize(12);
  String s = "Guide: Click on each button to see the different days people entered B11 at different entrances. Hover over the buttons to see the numeric values";
  text(s, 0+x/3, 1.5*x/3,width/2.5,height/3);
  BackgroundImage();
  rectbutton1();
  fill(#C431FF);
  textSize(13);
  text("11/05/2020", x+w/4.5, height/1.045);
  rectbutton2();
  fill(#C431FF);
  text("12/05/2020", x*2+w+w/4.5, height/1.045);
  rectbutton3();
  fill(#C431FF);
  text("13/05/2020", x*3+2*w+w/4.5, height/1.045);
  rectbutton4();
  fill(#C431FF);
  text("14/05/2020", x*4+3*w+w/4.5, height/1.045);
  rectbutton5();
  fill(#C431FF);
  text("15/05/2020", x*5+4*w+w/4.5, height/1.045);
  readyChart();
}
