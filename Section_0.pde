
//-------------------------------------
// Section 0  :  Title 
//-------------------------------------

void section0() {
  pushStyle();
    
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
    
    
    
    
  popStyle();
}

//-------------------------------------




