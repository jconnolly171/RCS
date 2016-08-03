import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;

String[] moves;

Arduino arduino;

void setup() {
  
  arduino = new Arduino (this, Arduino.list()[0], 57600);
  String[] strings;
  //size(750,600);
  // Load text file as a string
  strings = loadStrings("Test.txt");
  // Print string for debugging
  //println(strings[0]);
  
  moves = split(strings[0],' ');
  noLoop();
   
  //println(Arduino.list());
   
}


void draw() {
  
  int a = moves.length;
  
  for (int j=0; j<=a-4; j++){
    print(moves[j]+"  ");
    println(moves[a-4-j]);
  }
  move(2, 1000);
  
}
  
void move(int speed, int turns){
  arduino.pinMode(2, arduino.OUTPUT);
  arduino.pinMode(3, arduino.OUTPUT);
    
    for(int b =0; b<turns; b++){
      delay(speed); 
      arduino.digitalWrite(3, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(3, arduino.LOW);
  }
}
