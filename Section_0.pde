
//-------------------------------------
// Section 0  :  TITLE 
//-------------------------------------

void section0() {
  pg.pushStyle();
  pg.pushMatrix();
   
    // Offset
    offset = 0;
    
    // Title
    title = speak[offset].substring(trimChars);
    
    // Body   
    body = speak[offset + subSection].substring(trimChars);  
    
    // Title
    pg.fill(255);
    pg.textFont(CG48);
    pg.textAlign(CENTER);
    pg.text(body, width/2, height * 0.2);
    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------




