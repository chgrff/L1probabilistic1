// ExampleLSystemDesigns - contains initialization methods
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initProbabilisticLSystem() {
  // initialize turtle variables
  float randomNum = random(1,10);
  
  float moveDist = randomNum;
  float rotateAngle = 10*randomNum;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "B+B";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF[B]");
  
  rules.put('B', "FF[+B][-B]F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
