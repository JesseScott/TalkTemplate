
//-------------------------------------
// IMPORTS
//-------------------------------------

import toxi.math.conversion.*;
import toxi.geom.*;
import toxi.math.*;
import toxi.geom.mesh2d.*;
import toxi.util.datatypes.*;
import toxi.util.events.*;
import toxi.geom.mesh.subdiv.*;
import toxi.geom.mesh.*;
import toxi.math.waves.*;
import toxi.util.*;
import toxi.math.noise.*;

import org.apache.log4j.PropertyConfigurator;

import gml4u.brushes.*;
import gml4u.drawing.*;
import gml4u.utils.*;
import gml4u.utils.Timer;
import gml4u.model.*;

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

// Assets
PImage[] images;

// GML
Gml gml;
Timer timer = new Timer();

//Settings
P5Properties properties;

//-------------------------------------
// VARIABLES
//-------------------------------------

String title, subtitle, body;
int section = 0;
int subSection = 0;
int trimChars = 2;

String speak[];
int offset;

int mins, sec;    // Timer
int timeMax = 30; // GML

//-------------------------------------
// SETUP
//-------------------------------------

void setup() {
  // Properties
   try {
     // Setup
     properties=new P5Properties();
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
  
  CG18 = createFont("fonts/CenturyGothic-18", 18, true);
  CG24 = createFont("fonts/CenturyGothic-24", 24, true);
  CG36 = createFont("fonts/CenturyGothic-36", 36, true);
  CG48 = createFont("fonts/CenturyGothic-48", 48, true);
  
  // Speak
  speak = loadStrings("talk/codemotion.txt");
  
  // Assets
  images = new PImage[10];
  images[0] = loadImage("images/cc map.jpg");

  // GML
  PropertyConfigurator.configure(sketchPath+"/log4j.properties");
  gml = GmlParsingHelper.getGml(sketchPath+"/data/gml/tag.xml", false);
  GmlUtils.timeBox(gml, timeMax, true);
  timer.start();

  
}


//-------------------------------------
// DRAW
//-------------------------------------

void draw() {
  // Background
  background(0);
  
  // Start Buffer
  pg.beginDraw();
    pg.background(0);
   
  // Draw Section
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
  
  text("Elapsed Time: " + nf(mins, 2) + ":" + nf(sec, 2), width * 0.1, height * 0.9);
 
  
}

//-------------------------------------

