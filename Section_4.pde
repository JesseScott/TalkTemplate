
//-------------------------------------
// Section 4  :  Original GCode
//-------------------------------------

void section4() {
  pushStyle();
    
    // Title -- Line 40
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = speak[40].substring(trimChars);
    text(title, width/2, height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 41 - 43
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[41].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[42].substring(trimChars);
      text(body, width/8, height/2 + 50);   
      body = speak[43].substring(trimChars);
      text(body, width/8, height/2 + 100);
    }
    // SS2
    else if(subSection == 2) {
      //image(bombirImages[0], 160, 0); 
    }
    // SS3
    else if(subSection == 3) {
      //image(bombirImages[1], 160, 0); 
    }
    // SS4
    else if(subSection == 4) {
      //image(bombirImages[2], 160, 0); 
    }
    
  popStyle();
}

//-------------------------------------
