
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

//-------------------------------------
// DECLARATIONS
//-------------------------------------

PFont Header1, Header2, Header3, Body;
PFont CG18, CG24, CG36, CG48;

PImage[] bombirImages;
PImage[] sonicdriftImages;

Gml gml;
Timer timer = new Timer();
int timeMax = 30;

//-------------------------------------
// VARIABLES
//-------------------------------------

String title, subtitle, body;
int section = 0;
int subSection = 1;
int trimChars = 2;

String speak[];

//-------------------------------------
// SETUP
//-------------------------------------

void setup() {
  
  // Screen
  size(1280, 720, JAVA2D);
  smooth();
  
  background(0);
  textAlign(CENTER);
  
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
  speak = loadStrings("siat.txt");
  
  // Images
  bombirImages = new PImage[3];
  bombirImages[0] = loadImage("images/bombir_1.jpg");
  bombirImages[1] = loadImage("images/bombir_2.jpg");
  bombirImages[2] = loadImage("images/bombir_3.jpg");

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
  background(0);
  
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
  
}

//-------------------------------------

