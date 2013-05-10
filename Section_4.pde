
//-------------------------------------
// Section 4  :  PROCESSING
//-------------------------------------

void section4() {
  pg.pushStyle();
  pg.pushMatrix();
    
    // Offset
    offset = 40;
  
    // Title
    title = speak[offset].substring(trimChars);
    
    // Body   
    body = speak[offset + subSection].substring(trimChars);  
    
    // Title
    if(subSection == 0) {
      pg.fill(255);
      pg.textFont(Header2);
      pg.textAlign(CENTER);
      pg.text(title, width/2, height * 0.2);
    }
    // Body
    else {
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      pg.text(body, width/2 - 100, height/2);  
    }
    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------
