
//-------------------------------------
// Section 0  :  Title 
//-------------------------------------

void section0() {
  pg.pushStyle();
  pg.pushMatrix();
    
    offset = 0;
    
    // Style
    pg.fill(255);
    pg.stroke(255);
    pg.strokeWeight(10);
    pg.strokeCap(ROUND);
    pg.strokeJoin(MITER);
    pg.smooth();
    
    // Left Shape
    pg.line(pg.width * 0.1, pg.height * 0.5, pg.width * 0.2, pg.height * 0.25);
    pg.line(pg.width * 0.1, pg.height * 0.5, pg.width * 0.2, pg.height * 0.75);
   
    // Right Shape
    pg.line(pg.width * 0.9, pg.height * 0.5, pg.width * 0.8, pg.height * 0.25);
    pg.line(pg.width * 0.9, pg.height * 0.5, pg.width * 0.8, pg.height * 0.75); 
    
    // TAG
    timer.tick();
    pg.translate(pg.width/4, pg.height/4);
    for (GmlStroke strok : gml.getStrokes()) {
      for (GmlPoint p : strok.getPoints()) {
        if (p.time > timer.getTime()) {
         continue; 
        }
          Vec3D v = new Vec3D(p);
          v.scaleSelf(pg.width/2);
          pg.stroke(255, 0, 0);
          pg.fill(random(255), random(55), random(55));
          pg.ellipse(v.x, v.y, random(10,20), random(10, 20));
      }
    }
    
    
    
  pg.popStyle();
  pg.popMatrix();
}

//-------------------------------------




