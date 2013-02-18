
//-------------------------------------
// Section 0  :  Title 
//-------------------------------------

void section0() {
  pushStyle();
    
    // Title -- Line 01
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = speak[1].substring(trimChars);
    text(title, width/2, height * 0.2);
    
    // Body -- Lines 02 - 03
      fill(255);
      textFont(Header3);
      textAlign(CENTER);
      body = speak[2].substring(trimChars);
      text(body, width/2, height/2);
      body = speak[3].substring(trimChars);
      text(body, width/2, height/2 + 50);   
    
  popStyle();
}

//-------------------------------------




