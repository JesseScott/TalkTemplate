
//-------------------------------------
// Section 5  :  SonicDrift
//-------------------------------------

void section5() {
  pushStyle();
    
    // Title -- Line 50
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = speak[50].substring(trimChars);
    text(title, width/2, height * 0.2);
    
    // Body 
    if(subSection == 1) { // Lines 51 - 53
      fill(225);
      textFont(CG24);
      textAlign(LEFT);
      body = speak[51].substring(trimChars);
      text(body, width/8, height/2);
      body = speak[52].substring(trimChars);
      text(body, width/8, height/2 + 50);   
      body = speak[53].substring(trimChars);
      text(body, width/8, height/2 + 100);
      body = speak[54].substring(trimChars);
      text(body, width/8, height/2 + 150);
    }
    // SS2
    else if(subSection == 2) {
      image(sonicdriftImages[0], 0, 0); 
    }
    // SS3
    else if(subSection == 3) {
      image(sonicdriftImages[1], 0, 0); 
    }
    // SS4
    else if(subSection == 4) {
      image(sonicdriftImages[2], 0, 0); 
    }

  popStyle();
}

//-------------------------------------
