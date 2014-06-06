int wx, wy; //starting x and y for player window
int rows, cols; //number of rows or columns
int side; //side length of grid boxes
//Gem[][] gemArray; //array of gems
Gemgrid grid;
boolean pickup;
//Stores selected gem
int sxcor;
int sycor;

void setup() {
  size (1000, 1000);  
  wx = 100;
  wy = 100;
  rows = 8;
  cols = 8;
  side = 100;
  pickup = true;
  //gemArray = new Gem[8][8];  
  grid = new Gemgrid();
  for (int x = 0; x < grid.getGemArray ().length; x++) {
    for (int y = 0; y < grid.getGemArray ()[x].length; y++) {
      //gemArray[x][y] = new Gem((int)random(8), x, y);
      grid.getGemArray()[x][y] = new Gem((int)random(8), x, y);
    }
  }
}

void draw () {  
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      fill (100, 168, 255);
      rect(wx + side * x, wy + side * y, side, side);
    }
  }  
  for (int x = 0; x < grid.getGemArray ().length; x++) {
    for (int y = 0; y < grid.getGemArray ()[x].length; y++) {
      fill (grid.getGemArray()[x][y].getColor());
      stroke(100);
      ellipse(grid.getGemArray()[x][y].getPXcor(), //wx + side/2 + grid.getGemArray()[x][y].getXcor() * side, 
              grid.getGemArray()[x][y].getPYcor(), //wy + side /2 +grid.getGemArray()[x][y].getYcor() * side, 
              side/2, side/2);
      grid.getGemArray()[x][y].checkComboH();
      grid.getGemArray()[x][y].checkComboV();
    }
  }
  for (int x = 0; x < grid.getGemArray().length;x++){
    for (int y = 0; y < grid.getGemArray()[x].length;y++){
       grid.getGemArray()[x][y].breakAction();
    } 
  }
  
}

void mousePressed() {
  //print("desu");
  // if (pickup) {
  sxcor = grid.processMX(mouseX);
  sycor = grid.processMY(mouseY);
  //print(sxcor);
  //print(sycor);
  //pickup = !pickup;
  /*
  } else {      
   Gem selected = grid.getGem(sxcor, sycor);
   int xcor = grid.processMX(mouseX);
   int ycor = grid.processMY(mouseY); 
   selected.move(xcor, ycor);
   pickup = !pickup;
   }
   */
}

void mouseReleased() {    
  Gem selected = grid.getGem(sxcor, sycor);
  int xcor = grid.processMX(mouseX);
  int ycor = grid.processMY(mouseY); 
  selected.move(xcor, ycor);
  //print ("xcor:" + xcor);
  //print ("ycor: " + ycor);
  //pickup = !pickup;
}

void keyPressed() {
  int xcor = grid.processMX(mouseX);
  int ycor = grid.processMY(mouseY); 
  println(grid.getGem(xcor, ycor).getTypeID());
  println(grid.getGem(xcor, ycor).getPXcor());
  println(grid.getGem(xcor, ycor).getPYcor());
  println(grid.getGem(xcor, ycor).getXcor());
  println(grid.getGem(xcor, ycor).getYcor());
}

