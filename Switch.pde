
//-------------------------------------
// KEY
//-------------------------------------

void keyPressed() {
  
  if(key == CODED) {
    if(keyCode == RIGHT) {
      subSection ++;
      if(subSection >= 9) subSection = 9; 
    } 
    else if(keyCode == LEFT) {
      subSection --;
      if(subSection < 0) subSection = 0; 
    }
    else if(keyCode == UP) {
      int max = round(speakSize/10);
      if(section < max) {
        section++;
      }
      subSection = 0;
    }
    else if(keyCode == DOWN) {
      section--;
      if(section <= 0) {
        section = 0; 
      }
      subSection = 0;
    }
  }
  
}
