import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;

String[] moves;

Arduino arduino;
int delay = 400;

int z = 700;
  
int a;
  
/* Directions: */
final int dir1 = 1;
final int dir2 = 0;
final int dir3 = 1; 
final int dir4 = 0; 
final int dir5 = 1; 
final int dir6 = 0; 

void setup() {
  
  arduino = new Arduino (this, Arduino.list()[0], 57600);
  String[] strings;
  // Load text file as a string
  strings = loadStrings("Test3.txt");
  // Print string for debugging
  println(strings[0]);
  
  moves = split(strings[0],' ');
  a = moves.length;
   
  //println(Arduino.list());
   arduino.pinMode(2, arduino.OUTPUT);
   arduino.pinMode(3, arduino.OUTPUT);
   arduino.pinMode(4, arduino.OUTPUT);
   arduino.pinMode(5, arduino.OUTPUT);
   arduino.pinMode(6, arduino.OUTPUT);
   arduino.pinMode(7, arduino.OUTPUT);
   arduino.pinMode(8, arduino.OUTPUT);
   arduino.pinMode(9, arduino.OUTPUT);
   arduino.pinMode(10, arduino.OUTPUT);
   arduino.pinMode(11, arduino.OUTPUT);
   arduino.pinMode(50, arduino.OUTPUT);
   arduino.pinMode(51, arduino.OUTPUT);
   
   arduino.pinMode(42, arduino.OUTPUT);
   arduino.pinMode(38, arduino.OUTPUT);
   arduino.pinMode(34, arduino.OUTPUT);
   arduino.pinMode(30, arduino.OUTPUT);
   arduino.pinMode(26, arduino.OUTPUT);
   arduino.pinMode(22, arduino.OUTPUT);
   
   arduino.digitalWrite(42, arduino.HIGH);
   arduino.digitalWrite(38, arduino.HIGH);
   arduino.digitalWrite(34, arduino.HIGH);
   arduino.digitalWrite(30, arduino.HIGH);
   arduino.digitalWrite(26, arduino.HIGH);
   arduino.digitalWrite(22, arduino.HIGH);
  
  
  /*for (int j = 0; j <= a-4; j++){
    print(moves[j] + "  ");
    println(moves[a-4-j]);
  }*/
  noLoop();
}

void draw() {
  move2a(2,200); 

  for(int b = 0; b <= a-4; b++){ 
    if(moves[a-4-b].equals("B")){
      move1b(2,50);
      delay(z);
      println("b");
  }
    
    if (moves[a-4-b].equals("B'")){
      move1a(2,50);
      delay(z);
      println("b'");
    }
    
    if (moves[a-4-b].equals ("D'")){
      move2b(2,50);
      delay(z);
      println("d'");
    }
    
    if (moves[a-4-b].equals ("D")){
      move2a(2,50);
      delay(z);
      println("d");
    }
    
    if (moves[a-4-b].equals ("R")){
      move3b(2,50);
      delay(z);
      println("r");
    }
    
    if (moves[a-4-b].equals ("R'")){
      move3a(2,50);
      delay(z);
      println("r'");
    }
    
    if (moves[a-4-b].equals ("L'")){
      move4b(2,50);
      delay(z);
      println("l'");
    }
    
    if (moves[a-4-b].equals ("L")){
      move4a(2,50);
      delay(z);
      println("l");
    }
    
    if (moves[a-4-b].equals ("U")){
      move5b(2,50);
      delay(z);
      println("u");
    }
    
    if (moves[a-4-b].equals ("U'")){
      move5a(2,50);
      delay(z);
      println("u'");
    }
    
    if (moves[a-4-b].equals ("F")){
      move6a(2,50);
      delay(z);
      println("f");
    }
    
    if (moves[a-4-b].equals ("F'")){
      move6b(2,50);
      delay(z);
      println("f'");
    }
  }
  
    /*move1a(1,50);
    delay(delay);
    move2a(1,50);
    delay(delay);
    move3a(1,50);
    delay(delay);
    move4a(1,50);
    delay(delay);
    move5a(1,50);
    delay(delay);
    move6a(1,50);
    delay(delay);
    */

}
  
  
  
void move1a(int speed, int turns){
       
  arduino.digitalWrite(42, arduino.LOW);
     delay(2);
     
  if(dir1 == 1)
    {
      arduino.digitalWrite(2, arduino.HIGH);
    }
    
    else
    {
      arduino.digitalWrite(2, arduino.LOW);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed);
      arduino.digitalWrite(3, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(3, arduino.LOW);
  }
  arduino.digitalWrite(42,arduino.HIGH);
}

  void move1b(int speed, int turns){
    
    arduino.digitalWrite(42, arduino.LOW);
     delay(2);
    
     if(dir1 == 1)
    {
      arduino.digitalWrite(2, arduino.LOW);
    }
    
    else
    {
      arduino.digitalWrite(2, arduino.HIGH);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(3, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(3, arduino.LOW);
    }
    arduino.digitalWrite(42, arduino.HIGH);
    
  }
  
  void move2a(int speed, int turns){

    arduino.digitalWrite(38, arduino.LOW);
     delay(2);
    
     if(dir2 == 1)
    {
      arduino.digitalWrite(4, arduino.HIGH);
    }
    
    else
    {
      arduino.digitalWrite(4, arduino.LOW);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(5, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(5, arduino.LOW);
    }
  arduino.digitalWrite(38, arduino.HIGH);
  } 
  
  
  void move2b(int speed, int turns){
    arduino.digitalWrite(38, arduino.LOW);
     delay(2);
    
     if(dir2 == 1)
    {
      arduino.digitalWrite(4, arduino.LOW);
    }
    
    else
    {
      arduino.digitalWrite(4, arduino.HIGH);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(5, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(5, arduino.LOW);
    }
  arduino.digitalWrite(38, arduino.HIGH);
  }
  
  
  void move3a(int speed, int turns){ 
   
    arduino.digitalWrite(34, arduino.LOW);
     delay(2);
    
    if(dir3 == 1)
    {
      arduino.digitalWrite(6, arduino.HIGH);
    }
    
    else
    {
      arduino.digitalWrite(6, arduino.LOW);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(7, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(7, arduino.LOW);
    }
 arduino.digitalWrite(34, arduino.HIGH);
  }
  
  void move3b(int speed, int turns){
    
    arduino.digitalWrite(34, arduino.LOW);
     delay(2);
    
     if(dir3 == 1)
    {
      arduino.digitalWrite(6, arduino.LOW);
    }
    
    else
    {
      arduino.digitalWrite(6, arduino.HIGH);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(7, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(7, arduino.LOW);
    }
 arduino.digitalWrite(34, arduino.HIGH);
  }
  
  void move4a(int speed, int turns){

    arduino.digitalWrite(30, arduino.LOW);
     delay(2);
    
     if(dir4 == 1)
    {
      arduino.digitalWrite(8, arduino.HIGH);
    }
    
    else
    {
      arduino.digitalWrite(8, arduino.LOW);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(9, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(9, arduino.LOW);
    }
 arduino.digitalWrite(30, arduino.HIGH);
  }
  
  void move4b(int speed, int turns){
    
    arduino.digitalWrite(30, arduino.LOW);
     delay(2);
    
     if(dir4 == 1)
    {
      arduino.digitalWrite(8, arduino.LOW);
    }
    
    else
    {
      arduino.digitalWrite(8, arduino.HIGH);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(9, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(9, arduino.LOW);
    }
     arduino.digitalWrite(30, arduino.HIGH);
  }
  
  void move5a(int speed, int turns){
    
    arduino.digitalWrite(26, arduino.LOW);
     delay(2);
    
     if(dir5 == 1)
    {
      arduino.digitalWrite(10, arduino.HIGH);
    }
    
    else
    {
      arduino.digitalWrite(10, arduino.LOW);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(11, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(11, arduino.LOW);
    }
    arduino.digitalWrite(26, arduino.HIGH);
  }
  
  void move5b(int speed, int turns){

    arduino.digitalWrite(26, arduino.LOW);
     delay(2);
    
     if(dir5 == 1)
    {
      arduino.digitalWrite(10, arduino.LOW);
    }
    
    else
    {
      arduino.digitalWrite(10, arduino.HIGH);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(11, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(11, arduino.LOW);
    }
    arduino.digitalWrite(26, arduino.HIGH);
  }
  
  void move6a(int speed, int turns){

    arduino.digitalWrite(22, arduino.LOW);
     delay(2);
    
     if(dir6 == 1)
    {
      arduino.digitalWrite(50, arduino.HIGH);
    }
    
    else
    {
      arduino.digitalWrite(50, arduino.LOW);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(51, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(51, arduino.LOW);
    }
    arduino.digitalWrite(22, arduino.HIGH);
 } 
  
  void move6b(int speed, int turns){
    
    arduino.digitalWrite(22, arduino.LOW);
     delay(2);
     
     if(dir6 == 1)
    {
      arduino.digitalWrite(50, arduino.LOW);
    }
    
    else
    {
      arduino.digitalWrite(50, arduino.HIGH);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(51, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(51, arduino.LOW);
    }
    arduino.digitalWrite(22, arduino.HIGH);
}
