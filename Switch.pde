
//-------------------------------------
// KEY
//-------------------------------------

void keyPressed() {
  
  if(key == CODED) {
    if(keyCode == RIGHT) {
      subSection ++;
      if(subSection >= 10) subSection = 9; 
    } 
    else if(keyCode == LEFT) {
      subSection --;
      if(subSection <= 0) subSection = 1; 
    }
    else if(keyCode == UP) {
      section++;
      subSection = 0;
    }
    else if(keyCode == DOWN) {
      section--;
      if(section <= 0) section = 0; 
      subSection = 0;
      
    }
  }
  
}
