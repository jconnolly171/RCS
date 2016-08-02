//#include <AccelStepper.h>
//#include <MultiStepper.h>

//AccelStepper stepper1 (AccelStepper::DRIVER,3,2);
//AccelStepper stepper2 (AccelStepper::DRIVER,5,4);
//AccelStepper stepper3 (AccelStepper::DRIVER,7,6);
//AccelStepper stepper4 (AccelStepper::DRIVER,9,8);
//AccelStepper stepper5 (AccelStepper::DRIVER,11,10);
//AccelStepper stepper6 (AccelStepper::DRIVER,13,12);

int stepPin0 = 3;
int stepPin1 = 5;
int stepPin2 = 7;
int stepPin3 = 9;
int stepPin4 = 11;
int stepPin5 = 13;

unsigned long lastStep[]={0,0,0,0,0,0}; 
boolean lastState[]={false, false, false, false, false, false}; 
int stepPin[]= {stepPin0, stepPin1, stepPin2, stepPin3, stepPin4, stepPin5};

void moveMotor(int motor, int interval) 
{
  if(micros()-lastStep[motor]>=interval) 
  {
    if(lastState[motor]) 
    { 
      digitalWrite(stepPin[motor],LOW);
    }
    else
    { 
      digitalWrite(stepPin[motor],HIGH);
    }
    lastState[motor]=!lastState[motor];
    lastStep[motor]=micros();
  }
}


void setup() {
  // put your setup code here, to run once:
   /* stepper1.setMaxSpeed(300.0);
    stepper1.setSpeed(250);
    
    stepper2.setMaxSpeed(300.0);
    stepper2.setSpeed(250);
    
    stepper3.setMaxSpeed(300.0);
    stepper3.setSpeed(250);

    stepper4.setMaxSpeed(300.0);
    stepper4.setSpeed(250);
    
    stepper5.setMaxSpeed(300.0);
    stepper5.setSpeed(250);
    
    stepper6.setMaxSpeed(300.0);
    stepper6.setSpeed(250);

*/
Serial.begin(9600);
pinMode(stepPin0, OUTPUT);
pinMode(stepPin1, OUTPUT);
pinMode(stepPin2, OUTPUT); 
pinMode(stepPin3, OUTPUT); 
pinMode(stepPin4, OUTPUT);
pinMode(stepPin5, OUTPUT); 

}

void loop() {
  // put your main code here, to run repeatedly:


//stepper1.run(); 
//stepper2.run(); 
//stepper3.run();
//stepper4.run(); 
//stepper5.run(); 
//stepper6.run();

moveMotor(1,2000);
moveMotor(2,2000);
moveMotor(3,2000);
moveMotor(4,2000);
moveMotor(5,2000);
moveMotor(6,2000);

/*  while(Serial.available())
  {
    char In=Serial.read();
    
    if(In=='cw' || In=='CW')            // Clockwise 90
    {
    stepper1.move(50);
    stepper2.move(50); 
    stepper3.move(50);
    stepper4.move(50);
    stepper5.move(50);
    stepper6.move(50);
    }
    
     else if(In=='ccw' || In=='CCW')            //CCW 90
    {
    stepper1.move(150);
    stepper2.move(150); 
    stepper3.move(150);
    stepper4.move(150);
    stepper5.move(150);
    stepper6.move(150);

    }
    
     else if(In=='2' || In=='2')     // 180
    {
    stepper1.move(100);
    stepper2.move(100); 
    stepper3.move(100);
    stepper4.move(100);
    stepper5.move(100);
    stepper6.move(100);
    }
    

    
    else
    {
      
    }
  }

*/
}
