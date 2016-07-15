
//-------------------------------------
// SLIDE
//-------------------------------------

void slide(int num) {
  pg.pushStyle();
  pg.pushMatrix();
    
    // Offset
    offset = num * 10;

    // Title
    try {
      title = speak[offset].substring(trimChars);    
    }
    catch(Exception e) {
      println("TITLE: " + title);
      println("SPEAK is " + speak.length);
      print("ERROR:::: couldnt load title - maybe Index Out Of Bounds ???\n");
      //e.printStackTrace();
    }
  
    if(offset == 90) {
      title = "GENERATE";
    }
    else if(offset == 100) {
      title = "HEALTH DESIGN LAB";
    }
    else if(offset == 110) {
      title = "SANS SONDHEIM";
    }
    else if(offset == 120) {
      title = "JIAN BEGONE";
    }
    else if(offset == 130) {
      title = "YES! NOVA!";
    }
    else if(offset == 140) {
      title = "-- END --";
    }
    
    // Body
    try {
      body = speak[offset + subSection].substring(trimChars);  
    }
    catch(Exception e) {
      println("BODY: " + body);
      println("OFFSET  is " + (offset + subSection));
      print("ERROR:::: couldnt load body - maybe Index Out Of Bounds ???\n");
      //e.printStackTrace();
    }
    
    // Title
      pg.fill(255);
      pg.textFont(HelveticaNeue);
      pg.textAlign(CENTER);
      pg.text(title, pg.width/2, pg.height * 0.2);
    
    // Body
    
      pg.fill(225);
      pg.textFont(CG24);
      pg.textAlign(LEFT);
      pg.text(body, pg.width/8, pg.height/2, 3*(pg.width/4), pg.height/2);  
    

    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------
