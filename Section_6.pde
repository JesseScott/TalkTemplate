
//-------------------------------------
// Section 6  :  PWN THE WALL
//-------------------------------------

void section6() {
  pg.pushStyle();
  pg.pushMatrix();
    
    offset = 60;
    
    // Title -- Line 60
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = speak[60].substring(trimChars);
    text(title, width/2, height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 61 - 63
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[61].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[62].substring(trimChars);
      text(body, width/8, height/2 + 50);   
      body = speak[63].substring(trimChars);
      text(body, width/8, height/2 + 100);
      body = speak[64].substring(trimChars);
      text(body, width/8, height/2 + 150);
    }

    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------
