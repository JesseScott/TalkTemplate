
// 0  :  Introduction
void section0() {
  pushStyle();
    
    // Title
    fill(255);
    textFont(Header2);
    textAlign(CENTER);
    title = "Creative Coding Roundup";
    text(title, width/2, height * 0.2);
    
    // Body
    fill(200);
    textFont(Header3);
    textAlign(LEFT);
    body = "a walkthrough the various creative coding frameworks, \nruntimes, platforms, and engines...";
    text(body, width/8, height/2);
    
    
    // Definition Of Terms
    if(keyPressed) {
      println(key);
      if(key == 'a') {
        body = "Defintion Of Terms...";
      } 
    }
    
    // What I Am Talking About
    
    
    // What I Am NOT Talking About
    
    
  popStyle();
}

// 1  :  Map Of The Terrain
void section1() {
  pushStyle();
    background(0);
    
  popStyle();  
}

// 2  :  Future Of Frameworks
void section2() {
  pushStyle();
    background(0);
    
  popStyle();  
}

// 3  :  Focus On Developers
void section3() {
  pushStyle();
    background(0);
    
  popStyle();
}

// 4  :  Mobile
void section4() {
  pushStyle();
    background(0);
    
  popStyle();
}

// 5  :  Gaming
void section5() {
  pushStyle();
    background(0);
    
  popStyle();
}

// 6  :  Social
void section6() {
  pushStyle();
    background(0);
    
  popStyle();
}

// 7  :  Interactive + Physical
void section7() {
  pushStyle();
    background(0);
    
  popStyle();
}

// 8  : Art + Experimentation
void section8() {
  pushStyle();
    background(0);
    
  popStyle();
}

// 9  :  Wrap
void section9() {
  pushStyle();
    background(0);
    
  popStyle();
}
