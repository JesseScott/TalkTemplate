
//-------------------------------------
// Section 1  :  THE TAG
//-------------------------------------

void section1() {
  pg.pushStyle();
  pg.pushMatrix();
    
    offset = 10;
    
    // Title
    pg.fill(255);
    pg.textFont(Header2);
    pg.textAlign(CENTER);
    title = speak[offset].substring(trimChars);
    pg.text(title, pg.width/2, pg.height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 11 - 12
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      body = speak[offset +1].substring(trimChars);
      pg.text(body, pg.width/8, pg.height/2);
      body = speak[offset +2].substring(trimChars);
      pg.text(body, pg.width/8, pg.height/2 + 50);   
    }
    // SS2
    else if(subSection == 2) { // Lines 14 - 15
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      body = speak[offset +4].substring(trimChars);
      pg.text(body, pg.width/8, pg.height/2);
      body = speak[offset +5].substring(trimChars);
      pg.text(body, pg.width/8, pg.height/2 + 50);
    }
    // SS3
    else if(subSection == 3) { // Lines 17 - 18
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      body = speak[offset +7].substring(trimChars);
      pg.text(body, pg.width/8, pg.height/2);
      body = speak[offset +8].substring(trimChars);
      pg.text(body, pg.width/8, pg.height/2 + 50);
    }

  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------
