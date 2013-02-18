
//-------------------------------------
// Section 1  :  Intro
//-------------------------------------

void section1() {
  pushStyle();
    
    // Title -- Line 05
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = speak[5].substring(trimChars);
    text(title, width/2, height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 06 - 07
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[6].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[7].substring(trimChars);
      text(body, width/8, height/2 + 50);   
    }
    // SS2
    else if(subSection == 2) { // Lines 09 - 11
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[9].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[10].substring(trimChars);
      text(body, width/8, height/2 + 50);
      body = speak[11].substring(trimChars);
      text(body, width/8, height/2 + 100);
    }
    // SS3
    else if(subSection == 3) { // Lines 13 - 15
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[13].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[14].substring(trimChars);
      text(body, width/8, height/2 + 50);
      body = speak[15].substring(trimChars);
      text(body, width/8, height/2 + 100);
    }

  popStyle();
}

//-------------------------------------
