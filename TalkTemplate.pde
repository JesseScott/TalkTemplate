
//-------------------------------------
// IMPORTS
//-------------------------------------

import org.apache.log4j.PropertyConfigurator;
import java.util.Properties;
import java.awt.Frame;


//-------------------------------------
// DECLARATIONS
//-------------------------------------

// Graphics Buffer
PGraphics pg, s2;

//Windows
secondApplet s;
PFrame f2;

// Properties
int NumScreens;
int FirstScreenWidth, FirstScreenHeight;
int BufferWidth, BufferHeight;
int SecondScreenOffset, SecondScreenWidth, SecondScreenHeight;

// Fonts
PFont Header1, Header2, Header3, Body;
PFont CG18, CG24, CG36, CG48;
PFont HelveticaNeue;

// Assets
PImage[] images;

//Settings
P5Properties properties;


//-------------------------------------
// VARIABLES
//-------------------------------------

String title, subtitle, body;  // Strings to hold our text
int section = 0;               // Major Sections
int subSection = 0;            // Sub Sections
int trimChars = 3;             // Number of Characters to Trim Off The Line
int offset;                    // Based off of Section
String speak[];                // Our Text File
int speakSize;                 // Length of File

int mins, sec;    // Timer

//-------------------------------------
// SETUP
//-------------------------------------

void setup() {
  
  // Properties
   try {
     // Setup
     properties = new P5Properties();
     properties.load(openStream("settings.properties"));
     // Screens
     NumScreens = properties.getIntProperty("env.view.numscreens", 1);
     // First Window
     FirstScreenWidth = properties.getIntProperty("env.view.firstscreen.width", 640);
     FirstScreenHeight = properties.getIntProperty("env.view.firstscreen.height", 480);
     // Graphics Buffer
     BufferWidth = properties.getIntProperty("env.view.pgraphics.width", 640);
     BufferHeight = properties.getIntProperty("env.view.pgraphics.height", 480);      
     // Second Window
     SecondScreenOffset = properties.getIntProperty("env.view.secondscreen.offset", 1920);
     SecondScreenWidth = properties.getIntProperty("env.view.secondscreen.width", 640);
     SecondScreenHeight = properties.getIntProperty("env.view.secondscreen.height", 480);
  }
  catch(IOException e) {
    println("couldn't read config file...");
    exit();
  }
  
  // Screen
  size(FirstScreenWidth, FirstScreenHeight, JAVA2D);
  smooth();
  background(0);
  textAlign(CENTER);
  
  // Buffer
  pg = createGraphics(BufferWidth, BufferHeight, JAVA2D);
  
  // Second Frame
  frame.setLocation(0,0);
  if(NumScreens >= 2) {
    f2 = new PFrame((PApplet)(new secondApplet()), SecondScreenOffset, SecondScreenWidth, SecondScreenHeight);
    s2 = createGraphics(SecondScreenWidth, SecondScreenHeight, JAVA2D);
  }
  
  // Fonts
  Header1 = createFont("fonts/Header1", 96, true);
  Header2 = createFont("fonts/Header2", 48, true);
  Header3 = createFont("fonts/Header3", 36, true);
  Body    = createFont("fonts/Body", 24, true);
  HelveticaNeue = createFont("fonts/HelveticaNeue", 72, true);
  CG18 = createFont("fonts/CenturyGothic-18", 18, true);
  CG24 = createFont("fonts/CenturyGothic-24", 24, true);
  CG36 = createFont("fonts/CenturyGothic-36", 36, true);
  CG48 = createFont("fonts/CenturyGothic-48", 48, true);
  
  // Speak
  speak = loadStrings("talk/main.txt");
  speakSize = speak.length;
  println("-- OUR FILE LOOKS LIKE THIS: "); 
  for(int i = 0; i < speak.length; i++) {
    println(speak[i]); 
  }
  println("-- END FILE --"); 
  
  // Assets
  images = new PImage[10];
  
}


//-------------------------------------
// DRAW
//-------------------------------------

void draw() {
  // Background
  background(0);
    
  // Start Buffer
  pg.beginDraw();
  
    pg.smooth();
    pg.background(0);
    
    // KeyNote
    applyKeyNoteGradient();
   
    // Draw Section
    slide(section);
  
  // End Buffer
  pg.endDraw();
  
  // Draw Buffer
  image(pg, 0, 0);
  
  // Time
  sec = ( millis() / 1000 );
  mins = sec/60;
  
  if(mins >= 1) {
    sec = sec - 60;
  }
  
  fill(225);
  textFont(CG24);
  textAlign(LEFT); 
  text("Elapsed Time: " + nf(mins, 2) + ":" + nf(sec, 2), width * 0.05, height * 0.95);
 
  // State
  fill(225);
  textFont(CG24);
  textAlign(RIGHT);
  text("Section: " + section + " Sub-Section: " + subSection, width * 0.9, height * 0.95);

  
}

//-------------------------------------

void applyKeyNoteGradient() {
  pg.colorMode(RGB);
  int eighth = pg.height/8;
  for(int i = 0; i < pg.height; i++) {
    pg.stroke(eighth * ((i+1)/pg.height) * 2, eighth * ((i+1)/pg.height), map(i, 0, pg.height, 0, 100));
    pg.line(0, i, pg.width, i);    
  }
}

