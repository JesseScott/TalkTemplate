
//-------------------------------------
// Section 9  :  INFO
//-------------------------------------

void section9() {
  pg.pushStyle();
  pg.pushMatrix();
    
    offset = 70;
    
    // Title -- Line 66
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = speak[66].substring(trimChars);
    text(title, width/2, height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 61 - 63
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[67].substring(trimChars);
      text(body, width/2 - 100, height/2);
      body = speak[68].substring(trimChars);
      text(body, width/2 - 100, height/2 + 50);   
      body = speak[69].substring(trimChars);
      text(body, width/2 - 100, height/2 + 100);
      body = speak[70].substring(trimChars);
      text(body, width/2 - 100, height/2 + 150);
      body = speak[71].substring(trimChars);
      text(body, width/2 - 100, height/2 + 200);
    }

    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------
