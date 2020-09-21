void readyChart() {
  for (int i = 0; i < graphs.length; i++) {
    if (graphs[i])
      drawChart(i);
  }
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
  vertex(width/2, height/2-point0*(width/120));
  vertex(width/2+point1*(width/120), height/2);
  vertex(width/2, height/2+point2*(width/120));
  vertex(width/2-point3*(width/120), height/2);
  endShape();
}

//Toggles graphs on or off
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
