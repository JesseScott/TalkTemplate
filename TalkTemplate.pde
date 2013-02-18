
//-------------------------------------
/* TALK TEMPLATE
 *
 * a Processing slideshow template for presentations
 *
 */
//-------------------------------------




//-------------------------------------
// DECLARATIONS
//-------------------------------------

PFont Header1, Header2, Header3, Body;
PGraphics pg;

//-------------------------------------
// VARIABLES
//-------------------------------------

String title, subtitle, body;
int section = 0;
int subSection = 1;

//-------------------------------------
// SETUP
//-------------------------------------

void setup() {
  
  // Screen
  size(1280, 720, P2D);
  smooth();
  
  background(0);
  textAlign(CENTER);
  
  // PGraphics
  pg = createGraphics(width, height, P2D);
  
  // Fonts
  Header1 = createFont("Header1", 96, true);
  Header2 = createFont("Header2", 48, true);
  Header3 = createFont("Header3", 36, true);
  Body = createFont("Body", 12, true);
  
}


//-------------------------------------
// DRAW
//-------------------------------------

void draw() {
  background(0);
  
  // Start PG 
  pg.beginDraw();
  
  if(section == 0) {
    section0(); 
  }
  else if(section == 1) {
    section1(); 
  }
  else if(section == 2) {
    section2(); 
  }
  else if(section == 3) {
    section3(); 
  }
  else if(section == 4) {
    section4(); 
  }
  else if(section == 5) {
    section5(); 
  }
  else if(section == 6) {
    section6(); 
  }
  else if(section == 7) {
    section7(); 
  }
  else if(section == 8) {
    section8(); 
  }
  else if(section == 9) {
    section9(); 
  }
  
  // End PG
  pg.endDraw();
  
  // Show PG
  //image(pg, 0, 0);
  
}



