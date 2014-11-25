
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
    
    // TAG
    if(subSection == 0) {
      pg.translate(pg.width/4, pg.height/4);

    }
    // Title
    else  { 
      pg.fill(255);
      pg.textFont(Header2);
      pg.textAlign(CENTER);
      pg.text(body, width/2, height * 0.2);
    }
   
    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------




