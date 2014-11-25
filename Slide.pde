
//-------------------------------------
// Section 9  :  COMMUNITY
//-------------------------------------

void slide(int num) {
  pg.pushStyle();
  pg.pushMatrix();
    
     // Offset
    offset = num * 10;
  
    // Title + Body
    try {
      title = speak[offset].substring(trimChars);    
      body = speak[offset + subSection].substring(trimChars);  
    }
    catch(Exception e) {
      print("ERROR:::: couldnt load - maybe Index Out Of Bounds ???");
      e.printStackTrace();
    }
    
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
      pg.text(body, width/4, height/4, pg.width/2, pg.height/2);  
    }

    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------
