import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;

String[] moves;

Arduino arduino;

int pin= 2;
void setup() {
  
  arduino = new Arduino (this, Arduino.list()[0], 57600);
  
  String[] strings;
  size(750,600);
  // Load text file as a string
  
  strings = loadStrings("Test.txt");
  // Print string for debugging
  //println(strings[0]);
  
  moves = split(strings[0],' ');
   noLoop();
   
}


void draw() {
  
  int a = moves.length;
  
  for (int j=0; j<=a-4; j++){
    print(moves[j]+"  ");
    println(moves[a-4-j]);
  }
}
  
  void move(int speed, int turns){ 
    for(int b =0; b<turns; b++){ 
      arduino.digitalWrite(pin, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(pin, arduino.LOW);
      delay(speed);
  }
}