
//-------------------------------------
// Section 0  :  Title 
//-------------------------------------

void section0() {
  pushStyle();
  pushMatrix();
    
    // Style
    fill(255);
    stroke(255);
    strokeWeight(10);
    strokeCap(ROUND);
    strokeJoin(MITER);
    smooth();
    
    // Left Shape
    line(width * 0.1, height * 0.5, width * 0.2, height * 0.25);
    line(width * 0.1, height * 0.5, width * 0.2, height * 0.75);
   
    // Right Shape
    line(width * 0.9, height * 0.5, width * 0.8, height * 0.25);
    line(width * 0.9, height * 0.5, width * 0.8, height * 0.75); 
    
    // TAG
    timer.tick();
    translate(width/4, height/4);
    for (GmlStroke strok : gml.getStrokes()) {
      for (GmlPoint p : strok.getPoints()) {
        if (p.time > timer.getTime()) {
         continue; 
        }
          Vec3D v = new Vec3D(p);
          v.scaleSelf(width/2);
          noStroke();
          fill(random(255), random(55), random(55));
          ellipse(v.x, v.y, random(10,20), random(10, 20));
      }
    }
    
    
    
  popStyle();
  popMatrix();
}

//-------------------------------------




