int x=150;
int y=500;
int w=100;
int h=40;

void setup() {
size (800, 600);
loadData();
fill(0);
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
  line(width/2, height/8, width/2, height-height/8);
  text("00", width/2.03, height/8.2);
  text("12", width/2.02, height-height/10);
  line(width/5, height/2, width-width/5, height/2);
  text("18", width/5.7, height/1.98);
  text("6", width-width/5.2, height/1.975);
  rect(x,y,w,h);
}

void rectbutton(){
if(mousePressed){
    {
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h)
  fill(random(255));
  }
}

}
