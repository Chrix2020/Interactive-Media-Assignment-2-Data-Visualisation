// Each button is toggled based on the key binding of the particular graph displaying the maximum values of each people counter and its corresponding data sensor //
void rectbutton1() {
  stroke(0);
  fill(btnCol[0]);
  rect(x, y, w, h);
  if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(0);
    }
    if (graphs[0] == true){
      text("PC00.05 value: " + findMax(PC0005[0]), x, height/3);
      text("PC00.06 value: " + findMax(PC0006[0]), x, height/3+h/2);
      text("PC00.07 value: " + findMax(PC0007[0]), x, height/3+h);
      text("PC00.08 value: " + findMax(PC0008[0]), x, height/3+h*1.5);
      fill(0);
    }
  }
}

void rectbutton2() {
  stroke(0);
  fill(btnCol[1]);
  rect(x*2+w, y, w, h);
  if (mouseX>x*2+w && mouseX <x*2+w*2 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(1);
    }
    if (graphs[1] == true) {
      text("PC00.05 value: " + findMax(PC0005[1]), x, height/3);
      text("PC00.06 value: " + findMax(PC0006[1]), x, height/3+h/2);
      text("PC00.07 value: " + findMax(PC0007[1]), x, height/3+h);
      text("PC00.08 value: " + findMax(PC0008[1]), x, height/3+h*1.5);
      fill(0);
    }
  }
}

void rectbutton3() {
  stroke(0);
  fill(btnCol[2]);
  rect(x*3+w*2, y, w, h);
  if (mouseX>x*3+w*2 && mouseX <x*3+w*3 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(2);
    }
    if (graphs[2] == true) {
      text("PC00.05 value: " + findMax(PC0005[2]), x, height/3);
      text("PC00.06 value: " + findMax(PC0006[2]), x, height/3+h/2);
      text("PC00.07 value: " + findMax(PC0007[2]), x, height/3+h);
      text("PC00.08 value: " + findMax(PC0008[2]), x, height/3+h*1.5);
      fill(0);
    }
  }
}

void rectbutton4() {
  stroke(0);
  fill(btnCol[3]);
  rect(x*4+w*3, y, w, h);
  if (mouseX>x*4+w*3 && mouseX <x*4+w*4 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(3);
    }
    if (graphs[3] == true) {
      text("PC00.05 value: " + findMax(PC0005[3]), x, height/3);
      text("PC00.06 value: " + findMax(PC0006[3]), x, height/3+h/2);
      text("PC00.07 value: " + findMax(PC0007[3]), x, height/3+h);
      text("PC00.08 value: " + findMax(PC0008[3]), x, height/3+h*1.5);
      fill(0);
    }
  }
}

void rectbutton5() {
  stroke(0);
  fill(btnCol[4]);
  rect(x*5+w*4, y, w, h);
  if (mouseX>x*5+w*4 && mouseX <x*5+w*5 && mouseY>y && mouseY <y+h) {
    if (mousePressed) {
      toggleGraph(4);
    }
    if (graphs[4] == true) {
      text("PC00.05 value: " + findMax(PC0005[4]), x, height/3);
      text("PC00.06 value: " + findMax(PC0006[4]), x, height/3+h/2);
      text("PC00.07 value: " + findMax(PC0007[4]), x, height/3+h);
      text("PC00.08 value: " + findMax(PC0008[4]), x, height/3+h*1.5);
      fill(0);
    }
    
  }
}

void BackgroundImage(){
img1 = loadImage("b11.png");
tint(255, 128); 
image(img1, width-2.5*w, y-height/7, width/4,height/4);

img2 = loadImage("sky.png");
tint(255, 100); 
imageMode(CENTER);
image(img2, 0, 0, width*2,height*2);

img3 = loadImage("ppl.png");
tint(255, 128); 
imageMode(CENTER);
image(img3, width-w, y-height/14, width/10,height/10);

//img2 = loadImage("b11.1.png");
//tint(255, 100); 
//imageMode(CENTER);
//image(img2, x, x+150, width*1.9,(height*0.9)-150);
}

//Loads a particular chart whenever a number on the keyboard is pressed //
void keyPressed() {
  if (key == '1') {
    toggleGraph(0);
    ButtonSFX.rewind();
    ButtonSFX.play();
  }
  if (key == '2') {
    toggleGraph(1);
    ButtonSFX.rewind();
    ButtonSFX.play();
  }
  if (key == '3') {
    toggleGraph(2);
    ButtonSFX.rewind();
    ButtonSFX.play();
  }
  if (key == '4') {
    toggleGraph(3);
    ButtonSFX.rewind();
    ButtonSFX.play();
  }
  if (key == '5') {
    toggleGraph(4);
    ButtonSFX.rewind();
    ButtonSFX.play();
  }
}
