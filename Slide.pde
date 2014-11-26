
//-------------------------------------
// Section 9  :  COMMUNITY
//-------------------------------------

void slide(int num) {
  pg.pushStyle();
  pg.pushMatrix();
    
    // Offset
    offset = num * 10;
    println(offset);
    // Title
    try {
      title = speak[offset].substring(trimChars);    
    }
    catch(Exception e) {
      println("TITLE: " + title);
      print("ERROR:::: couldnt load - maybe Index Out Of Bounds ???\n");
      e.printStackTrace();
    }
    
    // Body
    try {
      body = speak[offset + subSection].substring(trimChars);  
    }
    catch(Exception e) {
      println("BODY: " + body);
      print("ERROR:::: couldnt load - maybe Index Out Of Bounds ???\n");
      e.printStackTrace();
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
