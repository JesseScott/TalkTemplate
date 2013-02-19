
//-------------------------------------
// Section 1  :  THE TAG
//-------------------------------------

void section1() {
  pg.pushStyle();
  pg.pushMatrix();
    
    // Title -- Line 05
    pg.fill(255);
    pg.textFont(Header2);
    pg.textAlign(CENTER);
    title = speak[5].substring(trimChars);
    pg.text(title, pg.width/2, pg.height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 06 - 07
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      body = speak[6].substring(trimChars);
      pg.text(body, pg.width/8, pg.height/2);
      body = speak[7].substring(trimChars);
      pg.text(body, width/8, height/2 + 50);   
    }
    // SS2
    else if(subSection == 2) { // Lines 09 - 11
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      body = speak[9].substring(trimChars);
      pg.text(body, width/8, height/2);
      body = speak[10].substring(trimChars);
      pg.text(body, width/8, height/2 + 50);
      body = speak[11].substring(trimChars);
      pg.text(body, width/8, height/2 + 100);
    }
    // SS3
    else if(subSection == 3) { // Lines 13 - 15
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      body = speak[13].substring(trimChars);
      pg.text(body, width/8, height/2);
      body = speak[14].substring(trimChars);
      pg.text(body, width/8, height/2 + 50);
      body = speak[15].substring(trimChars);
      pg.text(body, width/8, height/2 + 100);
    }

  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------
