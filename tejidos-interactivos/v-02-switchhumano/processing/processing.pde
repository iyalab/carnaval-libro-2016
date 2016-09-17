import processing.serial.*;
import processing.sound.*;

Serial myPort;  // Create object from Serial class
SoundFile sonido_a;
SoundFile sonido_b;

void setup() 
{
  size(200,200); //make our canvas 200 x 200 pixels big
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, "/dev/ttyUSB0", 9600);
  
  sonido_a = new SoundFile(this, "sonido_a.wav");
  sonido_b = new SoundFile(this, "sonido_b.wav");
}

void draw() {
  while (myPort.available() > 0) {
    String inBuffer = myPort.readString();   
    if (inBuffer != null) {
      println(inBuffer);
      
      if(inBuffer.indexOf("a") != -1){
        //Reproducir a sonido
        sonido_a.play();
      }
      if(inBuffer.indexOf("b") != -1){
        //Reproducir b sonido
        sonido_b.play();
      }
    }
  }
}