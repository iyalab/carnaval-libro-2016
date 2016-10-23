import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.serial.*;
import processing.sound.*;

Serial myPort;  // Create object from Serial class

Minim minim;
AudioPlayer bongos;
AudioPlayer campana;
AudioPlayer cascara;
AudioPlayer loop;
AudioPlayer wiro1;
AudioPlayer wiro2;
AudioPlayer bongos2;

void setup() 
{
  minim = new Minim(this);
  size(200,200); //make our canvas 200 x 200 pixels big
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, "/dev/ttyUSB0", 9600);
  
  bongos = minim.loadFile("/media/juan/Archivos/proyectos/carnaval-libro-2016/tejidos-interactivos/v-02-switchhumano/processing/data/bongos.mp3",2048);
  campana = minim.loadFile("/media/juan/Archivos/proyectos/carnaval-libro-2016/tejidos-interactivos/v-02-switchhumano/processing/data/campana.mp3",2048);
  cascara = minim.loadFile("/media/juan/Archivos/proyectos/carnaval-libro-2016/tejidos-interactivos/v-02-switchhumano/processing/data/cascara.mp3",2048);
  loop = minim.loadFile("/media/juan/Archivos/proyectos/carnaval-libro-2016/tejidos-interactivos/v-02-switchhumano/processing/data/loop.wav",2048);
  wiro1 = minim.loadFile("/media/juan/Archivos/proyectos/carnaval-libro-2016/tejidos-interactivos/v-02-switchhumano/processing/data/wiro1.wav",2048);
  wiro2 = minim.loadFile("/media/juan/Archivos/proyectos/carnaval-libro-2016/tejidos-interactivos/v-02-switchhumano/processing/data/wiro2.mp3",2048);
  bongos2 = minim.loadFile("/media/juan/Archivos/proyectos/carnaval-libro-2016/tejidos-interactivos/v-02-switchhumano/processing/data/bongos.mp3",2048);
}

void draw() {
  while (myPort.available() > 0) {
    String inBuffer = myPort.readString();   
    if (inBuffer != null) {
      println(inBuffer);
      
      if(inBuffer.indexOf("a") != -1){
        if(!bongos.isPlaying()){
          bongos.loop();
        }
      }else{
        bongos.pause();
      }
      if(inBuffer.indexOf("b") != -1){
        if(!campana.isPlaying()){
          campana.loop();
        }
      }else{
        campana.pause();
      }
      if(inBuffer.indexOf("c") != -1){
        if(!cascara.isPlaying()){
          cascara.loop();
        }
      }else{
        cascara.pause();
      }
      if(inBuffer.indexOf("d") != -1){
        if(!loop.isPlaying()){
          loop.loop();
        }
      }else{
        loop.pause();
      }
      if(inBuffer.indexOf("e") != -1){
        if(!wiro1.isPlaying()){
          wiro1.loop();
        }
      }else{
        wiro1.pause();
      }
      if(inBuffer.indexOf("f") != -1){
        if(!wiro2.isPlaying()){
          wiro2.loop();
        }
      }else{
        wiro2.pause();
      }
      if(inBuffer.indexOf("g") != -1){
        if(!bongos2.isPlaying()){
          bongos2.loop();
        }
      }else{
        bongos2.pause();
      }
    }
  }
}