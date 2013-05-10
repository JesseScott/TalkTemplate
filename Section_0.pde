
//-------------------------------------
// Section 0  :  TITLE 
//-------------------------------------

void section0() {
  pg.pushStyle();
  pg.pushMatrix();
   
    // Offset
    offset = 0;
    
    // Title
    title = speak[offset].substring(trimChars);
    
    // Body   
    body = speak[offset + subSection].substring(trimChars);  
    
    // TAG
    if(subSection == 0) {
      timer.tick();
      pg.translate(pg.width/4, pg.height/4);
      for (GmlStroke strok : gml.getStrokes()) {
        for (GmlPoint p : strok.getPoints()) {
          if (p.time > timer.getTime()) {
           continue; 
          }
            Vec3D v = new Vec3D(p);
            v.scaleSelf(pg.width/2);
            //pg.stroke(255, 255, 0);
            pg.stroke(random(255), random(255), random(255), 155);
            pg.noFill();
            pg.ellipse(v.x, v.y, random(1, 10), random(1, 10));
            //pg.line(v.x, v.y, v.x + random(90), v.y + random(90));
        }
      }
    }
    // Title
    else  { 
      pg.fill(255);
      pg.textFont(Header2);
      pg.textAlign(CENTER);
      pg.text(body, width/2, height * 0.2);
    }
   
    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------




