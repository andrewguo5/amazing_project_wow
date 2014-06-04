class Gemgrid {
 Gem[][] gemArray;
 
 Gemgrid() {
  gemArray = new Gem[8][8]; 
 }
 
 Gem[][] getGemArray() {
   return gemArray;
 }
 
 Gem getGem(int x, int y) {
  return gemArray[x][y]; 
 }
 
 void moveGem(int x, int y, int dx, int dy) {
  gemArray[x][y].move(dx, dy); 
 }
  
 //these pairs of functions convert mouseX/Y to int coords of the grid
 int processMX(int mx) {
  return (mouseX - wx) / 100;
 }
 int processMY(int my) {
  return (mouseY - wy) / 100;
 }
 
}
