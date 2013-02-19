
//-------------------------------------
// KEY
//-------------------------------------

void keyPressed() {

  if(key == '0') {
    section = 0;
    subSection = 1;
    timer.reset(); 
  }  
  else if(key == '1') {
    section = 1;
    subSection = 1;
  }
  else if(key == '2') {
    section = 2;
    subSection = 1;
  }
  else if(key == '3') {
    section = 3;
    subSection = 1;
  }
  else if(key == '4') {
    section = 4;
    subSection = 1;
  }  
  else if(key == '5') {
    section = 5;
    subSection = 1;
  }  
  else if(key == '6') {
    section = 6;
    subSection = 1;
  } 
  else if(key == '7') {
    section = 7;
    subSection = 1;
  } 
  
  if(key == CODED) {
    if(keyCode == RIGHT) {
      subSection ++;
      if(subSection == 9) subSection = 9; 
    } 
    else if(keyCode == LEFT) {
      subSection --;
      if(subSection == 1) subSection = 1; 
    }
  }
  
}
