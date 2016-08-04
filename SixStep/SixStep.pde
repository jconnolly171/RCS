import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;

String[] moves;

Arduino arduino;
  final int cw = 0;
  final int ccw = 1;
  
int a = moves.length;
  
/* Directions: */
final int dir1 = 1;
final int dir2 = 1;
final int dir3 = 1; 
final int dir4 = 1; 
final int dir5 = 1; 
final int dir6 = 1; 

void setup() {
  
  arduino = new Arduino (this, Arduino.list()[0], 57600);
  String[] strings;
    //size(750,600);
    // Load text file as a string
  strings = loadStrings("Test.txt");
    // Print string for debugging
    //println(strings[0]);
  
  moves = split(strings[0],' ');
    //noLoop();
   
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
   arduino.pinMode(12, arduino.OUTPUT);
   arduino.pinMode(13, arduino.OUTPUT);
  
  for (int j = 0; j <= a-4; j++){
    print(moves[j] + "  ");
    println(moves[a-4-j]);
  }
}

void draw() {
  for(int b = 0; b <= a-4; b++){ 
    
    if (moves[b] == "A"){
      move1a(2,250);
    }
    
    if (moves[b] == "A'"){
      move1b(2,250);
    }
    
    if (moves[b] == "B"){
      move2a(2,250);
    }
    
    if (moves[b] == "B'"){
      move2b(2,250);
    }
    
    if (moves[b] == "C"){
      move3a(2,250);
    }
    
    if (moves[b] == "C'"){
      move3b(2,250);
    }
    
    if (moves[b] == "D"){
      move4a(2,250);
    }
    
    if (moves[b] == "D'"){
      move4b(2,250);
    }
    
    if (moves[b] == "E"){
      move5a(2,250);
    }
    
    if (moves[b] == "E'"){
      move5b(2,250);
    }
    
    if (moves[b] == "F"){
      move6a(2,250);
    }
    
    if (moves[b] == "F'"){
      move6b(2,250);
    }
  }
  
 /* move1a(2,250);
    delay(500);
    move2a(2,250);
    delay(500);
    move3a(2,250);
    delay(500);
    move4a(2,250);
    delay(500);
    move5a(2,250);
    delay(500);
    move6a(2,250);
    delay(500);    */
}
  
  
  
void move1a(int speed, int turns){

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
}

  void move1b(int speed, int turns){
    
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
  }
  
  void move2a(int speed, int turns){
  
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
  } 
  
  
  void move2b(int speed, int turns){
    
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
  }
  
  void move3a(int speed, int turns){ 
   
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
  }
  
  void move3b(int speed, int turns){
    
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
  }
  
  void move4a(int speed, int turns){

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
  }
  
  void move4b(int speed, int turns){
    
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
  }
  
  void move5a(int speed, int turns){
    
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
  }
  
  void move5b(int speed, int turns){

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
  }
  
  void move6a(int speed, int turns){

     if(dir6 == 1)
    {
      arduino.digitalWrite(12, arduino.HIGH);
    }
    
    else
    {
      arduino.digitalWrite(12, arduino.LOW);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(13, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(13, arduino.LOW);
    }
  } 
  
  void move6b(int speed, int turns){
    
     if(dir6 == 1)
    {
      arduino.digitalWrite(12, arduino.LOW);
    }
    
    else
    {
      arduino.digitalWrite(12, arduino.HIGH);
    }
    
    for(int b = 0; b < turns; b++){
      delay(speed); 
      arduino.digitalWrite(13, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(13, arduino.LOW);
    }
   
}