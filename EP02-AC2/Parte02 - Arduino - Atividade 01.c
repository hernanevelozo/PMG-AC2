/*
  PONTIFÍCIA UNIVERSIDADE CATÓLICA DE MINAS GERAIS - PUC MINAS
  
  Curso: Engenharia de Computação - 02/2022
  Disciplina: Arquitetura de Computadores II
  
  Professor: Romanelli Lodron Zuim
  Exercício Prático 02 - Exerc 01
  
  Aluno: Hernane Velozo
*/

// Definição de valores para variáveis

int led10 = 10;		// Azul
int led11 = 11;		// Verde	
int led12 = 12;		// Amarelo
int led13 = 13;		// Vermelho

void setup(){		// Configuração dos pinos

  	pinMode(led10, OUTPUT);
    pinMode(led11, OUTPUT);
    pinMode(led12, OUTPUT);
    pinMode(led13, OUTPUT);

    digitalWrite(led10, LOW);
    digitalWrite(led11, LOW);
    digitalWrite(led12, LOW);
    digitalWrite(led13, LOW);
}

void loop(){		//Execução do programa

    digitalWrite(led13, HIGH);		
    control(3);						//led vermelho
    digitalWrite(led13, LOW);

    digitalWrite(led11, HIGH); 		
    control(4);						//led verde
    digitalWrite(led11, LOW);
    
    digitalWrite(led12, HIGH); 		
    control(2);						//led amarelo
    digitalWrite(led12, LOW);
    
    delay(100);
}//fim do loop


void control(int ciclos){ //controlador dos ciclos de led
    for (int ciclo = 0; ciclo < ciclos; ciclo++) {
        
        digitalWrite(led10, HIGH);
        delay(1000);

        digitalWrite(led10, LOW);
        delay(1000);
    }
}