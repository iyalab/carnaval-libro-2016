int valorcd0 = 0;
int valorcd1 = 0;
int valorcd2 = 0;
int valorcd3 = 0;
int valorcd4 = 0;
int valorcd5 = 0;
int valorcd6 = 0;

int umbral = 700;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  valorcd0 = analogRead(A0);
  valorcd1 = analogRead(A1);
  valorcd2 = analogRead(A2);
  valorcd3 = analogRead(A3);
  valorcd4 = analogRead(A4);
  valorcd5 = analogRead(A5);
  valorcd6 = analogRead(A6);
  
  if(valorcd0 < umbral){
    Serial.print("a");
  }
  if(valorcd1 < umbral){
    Serial.print("b");
  }
  if(valorcd2 < umbral){
    Serial.print("c");
  }
  if(valorcd3 < umbral){
    Serial.print("d");
  }
  if(valorcd4 < umbral){
    Serial.print("e");
  }
  if(valorcd5 < umbral){
    Serial.print("f");
  }
  if(valorcd6 < umbral){
    Serial.print("g");
  }
  Serial.println(" ");
  delay(100);
}
