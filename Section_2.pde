
//-------------------------------------
// Section 2  :  PROJECTION 
//-------------------------------------

void section2() {
  pushStyle();
    
    offset = 20;
    
    // Title -- Line 30
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = speak[30].substring(trimChars);
    text(title, width/2, height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 31 - 33
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[31].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[32].substring(trimChars);
      text(body, width/8, height/2 + 50);   
      body = speak[33].substring(trimChars);
      text(body, width/8, height/2 + 100);
    }
    if(subSection == 2) { // Lines 34 - 33
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[35].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[36].substring(trimChars);
      text(body, width/8, height/2 + 50);   
      body = speak[37].substring(trimChars);
      text(body, width/8, height/2 + 100);
      body = speak[38].substring(trimChars);
      text(body, width/8, height/2 + 150);
    }
    
  popStyle();
}

//-------------------------------------

