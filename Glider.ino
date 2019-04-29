const int boton_switch= 8;

const int Red= 6;
const int Green= 5;
const int Blue= 3;

const int Enable= 12;
boolean Activo = true;
volatile byte Encendido = HIGH;

unsigned long previous_Millis = 0;

const int Tiempo_motores = 5000;  //5 segundos
const int Tiempo_sumergir = 10000;  //10 segundos

void setup() {
  Serial.begin(9600);
  
  pinMode(10,OUTPUT); //PWM
  pinMode(11,OUTPUT); //PWM
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
  
  while(Activo){
    sacar_agua();     //Sacar agua antes de empezar
    Serial.println("sacar agua");
  }
  
}

void loop() {
    Encendido=LOW;
    chupar_agua();
  while(digitalRead(boton_switch)!= HIGH){    //correr el codigo mientras no tenga señal
    Encendido=HIGH;
    End_Switch();   //Prende el motor
    
    chupar_agua();  //succiona agua
    Serial.println("chupar agua");

    delay(Tiempo_motores); //espera unos 5 segundos para chupar agua

    End_Switch();   //apaga el motor

    ledRGB_Write(0,0,0); //LED es aqua
    delay(Tiempo_sumergir); // espera 10 segundos

    End_Switch;   // prende el motor
    
    sacar_agua(); //saca agua
    Serial.println("sacar agua");

    delay(Tiempo_motores);  //espera unos 5 segundos 

    End_Switch; //apaga el Motor

    ledRGB_Write(0,0,255);  //LED es azul
    delay(Tiempo_sumergir*1.1); //espera mas tiempo que el de sumergir
    
    
    //tiempo
  }

}

void chupar_agua(){
  ledRGB_Write(0,200,0);  //LED es verde
  digitalWrite(Enable,Encendido);
  digitalWrite(10,HIGH);
  digitalWrite(11,LOW);
}

void sacar_agua(){
  ledRGB_Write(255,0,0);  //LED es rojo
  digitalWrite(Enable,Encendido);
  digitalWrite(10,LOW);
  digitalWrite(11,HIGH);
  
}

void End_Switch(){
 // Encendido=!Encendido;
  Activo=!Activo;
  
  // digitalWrite(Enable,Encendido);
}

void ledRGB_Write(byte R, byte G, byte B){
  analogWrite(Red, R);
  analogWrite(Green, G);
  analogWrite(Blue, B);
}
