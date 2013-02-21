
//-------------------------------------
// Section 3  :  ACCESS(-ABILITY)
//-------------------------------------

void section3() {
  pg.pushStyle();
  pg.pushMatrix();
    
    offset = 30;
    
    // Title -- Line 17
    // is inside subSection 1 & 2
    
    // Body 
    if(subSection == 1) { // Lines 18 - 21
      // Title 
      fill(255);
      textFont(Header2);
      textAlign(CENTER);
      title = speak[17].substring(trimChars);
      text(title, width/2, height * 0.2);
      
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[18].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[19].substring(trimChars);
      text(body, width/8, height/2 + 50);   
      body = speak[20].substring(trimChars);
      text(body, width/8, height/2 + 100);
      body = speak[21].substring(trimChars);
      text(body, width/8, height/2 + 150);
    }
    // SS2
    else if(subSection == 2) { // Lines 23 - 
      // Title
      fill(255);
      textFont(Header2);
      textAlign(CENTER);
      title = speak[17].substring(trimChars);
      text(title, width/2, height * 0.2);
    
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[23].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[24].substring(trimChars);
      text(body, width/8, height/2 + 50);
    }
    // SS3
    else if(subSection == 3) {
      //image(bombirImages[0], 160, 0); 
    }
    // SS4
    else if(subSection == 4) {
      //image(bombirImages[1], 160, 0); 
    }
    // SS5
    else if(subSection == 5) {
      //image(bombirImages[2], 240, 60); 
    }
    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------

