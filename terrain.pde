// Tile

final float SHALLOW_WATER_THRESHOLD = 0.61;
final float DEEP_WATER_THRESHOLD = 0.64;

Tile(cell c) {
  canGrow = true;
  tileId = 0;
  passChance = 1;
}

void display() {
  switch(tileId) {
    case 0:
    fill(100,105+grass/5,0);
    break;
    case 1:
    fill(0,75,205);
    break;
    case 2:
    fill(0,25,205);
    break;
  }
}

public void setFertility() {
  //grass perl and noise
  
  if(fertility > SHALLOW_WATER_THRESHOLD) {
    tileId = 1;
    passChance = 0.6;
    canGrow = false;
    grass = 0;
  }
}

public boolean canPass() {
  return Math.random() < passChance;
}

// Animal

boolean canMove() {
  return myDestination.getTile().canPass();
}

// Cell

public void setFertility() {
  myTile.setFertility();
}

for(int i =0; i<20; i++) {
  grassGrow= 2;
  canGrow = false;
  cells[i][j].setGrowthRate;
  myCells.getX().return grass;
}