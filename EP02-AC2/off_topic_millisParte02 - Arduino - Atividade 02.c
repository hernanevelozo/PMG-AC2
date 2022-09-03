/*
======  
  PONTIFÍCIA UNIVERSIDADE CATÓLICA DE MINAS GERAIS - PUC MINAS
  
  Curso: Engenharia de Computação - 02/2022
  Disciplina: Arquitetura de Computadores II
  
  Professor: Romanelli Lodron Zuim
  Atividade: Exercício Prático 02 - Exerc 01
  
  Aluno: Hernane Velozo
  Belo Horizonte, 20/08/2022.
======
*/

// Definiçao de valores para variáveis e   

boolean acende = true;

int led10 = 10; //azul
int led11 = 11; //verde
int led12 = 12; //amarelo
int led13 = 13; //vermelho

long tempo1 = 0;
long tempo2 = 0;
long tempo3 = 0;
long tempo4 = 0;

void setup() {                
  
  	// configura os pinos como saídas DIGITAIS.
	pinMode(led10, OUTPUT);
  	pinMode(led11, OUTPUT);
  	pinMode(led12, OUTPUT);
  	pinMode(led13, OUTPUT);
}

void loop() {
  
  //led azul |===================
	if(acende){
    	if((millis () - tempo1) < 1000){
      		digitalWrite(led10, HIGH);
    	}
      	if((millis() - tempo1) >= 1000){
      		digitalWrite(led10, LOW);
    	}
    	if((millis() - tempo1) >= 2000){
      	tempo1 = millis();
    	}
	}
  
  //led vermelho |================
  
	if(acende){
 		if((millis () - tempo3) < 3000){
    		digitalWrite(led13, HIGH);
    	}
    	if((millis() - tempo3) >= 3000){
     		digitalWrite(led13, LOW);
    	}
    	if((millis() - tempo3) >= 3100){
    		tempo2 = millis();
		}
  	}

  //led verde |===================
  
	if(acende){
 		if((millis () - tempo3) >= 4000){
    		digitalWrite(led11, HIGH);
    	}
    	if((millis() - tempo3) >= 8000){
     		digitalWrite(led11, LOW);
    	}
    	if((millis() - tempo3) >= 8100){
    		tempo2 = millis();
		}
  	}
  
  //led amarelo|=================
  
	if(acende){
 		if((millis () - tempo4) >= 9000){
    		digitalWrite(led12, HIGH);
    	}
    	if((millis() - tempo4) >= 1100){
     		digitalWrite(led12, LOW);
    	}
    	if((millis() - tempo4) >= 11010){
    		tempo2 = millis();
		}
  	} 
}//fim do loop
