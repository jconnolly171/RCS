\\Trying to make 2darray 4 cube


int j = 0;
String RubixCube [3][3] =  {};

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);

}


void loop() {
  // put your main code here, to run repeatedly:
  
if ((Serial.available() > 0)) {
  char incomingbyte = Serial.read();
  for (int j; 0 <= j <= 2; j++) {
  if ((incomingbyte == '1') || (incomingbyte == '2')|| (incomingbyte == '3')|| (incomingbyte == '4')|| (incomingbyte == '5')|| (incomingbyte == '6')){ 
   RubixCube [j][0] = incomingbyte;
       Serial.println (RubixCube[0][0]);
        }
      }
     
    }
}


