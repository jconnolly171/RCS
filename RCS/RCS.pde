
String[] moves;

void setup() {
  String[] strings;
  size(750,600);
  // Load text file as a string
  
  strings = loadStrings("Test.txt");
  // Print string for debugging
  
  println(strings[0]);
  moves = split(strings[0],' ');
  int i= moves.length;
  println(i);
  println(moves[i-4]);
 
}