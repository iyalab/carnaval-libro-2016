int valorHilo0 = 0;
int valorHilo1 = 0;
int ledHilo0 = 2;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(ledHilo0, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  valorHilo0 = analogRead(A0);
  valorHilo1 = analogRead(A1);
  if(valorHilo0 < 940){
    Serial.print("a");
    digitalWrite(ledHilo0, HIGH);
  }else{
    digitalWrite(ledHilo0, LOW);
  }
  if(valorHilo1 < 940){
    Serial.print("b");
  }
  Serial.println(" ");
  delay(100);
}
