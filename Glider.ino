const int boton_switch= 8;

const int Red= 6;
const int Green= 5;
const int Blue= 3;

const int Enable= 12;
boolean Activo = true;
boolean Activado = false;
volatile byte Encendido = HIGH;

unsigned long previousMillis = 0;

const int Tiempo_motores = 1500;  //15 segundos
const int Tiempo_sumergir = 10000;  //10 segundos

const int input1 = 11;//11
const int input2 = 10;//10

int ledState = LOW;
const long interval = 1000;

void setup() {
  Serial.begin(9600);
  
  pinMode(input1,OUTPUT); //PWM
  pinMode(input2,OUTPUT); //PWM
  pinMode(Enable,OUTPUT);
  pinMode(9,OUTPUT);
  digitalWrite(9,HIGH);
  
  pinMode(boton_switch,INPUT); //switch magnetico

  pinMode(Red,OUTPUT); //PWM
  pinMode(Green,OUTPUT); //PWM
  pinMode(Blue,OUTPUT); //PWM
  

  attachInterrupt(digitalPinToInterrupt(2),End_Switch,HIGH);
  //attachInterrupt(digitalPinToInterrupt(3),,FALLING);
  
  ledRGB_Write(0,0,0);
  
  //while(Activo){
    //sacar_agua();     //Sacar agua antes de empezar
    //Serial.println("sacar agua");
  //}
  
}

void loop() {
    apagar();
  while(Activado){    //correr el codigo mientras no tenga señal
    
    chupar_agua();  //succiona agua
    Serial.println("chupar agua");

    delay(Tiempo_motores); //espera unos 5 segundos para chupar agua

    apagar();
   
    ledRGB_Write(0,0,0); //LED es aqua
    delay(Tiempo_sumergir); // espera 10 segundos
    
    sacar_agua(); //saca agua
    Serial.println("sacar agua");

    delay(Tiempo_motores);  //espera unos 5 segundos 

    apagar();

    ledRGB_Write(0,0,255);  //LED es azul
    delay(Tiempo_sumergir*1.1); //espera mas tiempo que el de sumergir
    
    break;
    //tiempo
  }
  if(digitalRead(boton_switch)!= HIGH && Activado== false){
    ledblink();
  }
  if(digitalRead(boton_switch)== HIGH){
    Activado=true;
  }
  if(digitalRead(boton_switch)== HIGH && Activado== true){
    Activado=false;
  }

}

void chupar_agua(){
  ledRGB_Write(0,200,0);  //LED es verde
  digitalWrite(Enable,HIGH);
  digitalWrite(10,HIGH);
  digitalWrite(11,LOW);
}

void sacar_agua(){
  ledRGB_Write(255,0,0);  //LED es rojo
  digitalWrite(Enable,HIGH);
  digitalWrite(10,LOW);
  digitalWrite(11,HIGH);
  
}

void End_Switch(){
 // Encendido=!Encendido;
  Activo=!Activo;
  
  // digitalWrite(Enable,Encendido);
}

void apagar(){
  
  digitalWrite(Enable,LOW);
  digitalWrite(input1,LOW);
  digitalWrite(input2,LOW);
}

void ledRGB_Write(byte R, byte G, byte B){
  analogWrite(Red, R);
  analogWrite(Green, G);
  analogWrite(Blue, B);
}

void ledblink(){
  unsigned long currentMillis = millis();

  if (currentMillis - previousMillis >= interval) {
    // save the last time you blinked the LED
    previousMillis = currentMillis;

    // if the LED is off turn it on and vice-versa:
    if (ledState == LOW) {
      ledState = HIGH;
      ledRGB_Write(255,255,255);
    } else {
      ledState = LOW;
      ledRGB_Write(0,0,0);
    }
  }
}

