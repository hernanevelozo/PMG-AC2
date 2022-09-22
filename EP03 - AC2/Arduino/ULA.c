/*
======
  PUC MINAS

  Curso: Computação - 02/2022
  Disciplina: Arquitetura de Computadores II

  Professor: Romanelli Lodron Zuim
  Atividade: Exercício Prático 03 - Exerc 01

  Alunos: Arthur Kazuo, Bernard Paes, Daniel Gomes e Hernane Velozo.
  Belo Horizonte, 31/08/2022.
======
*/

// Definicação de entradas e saidas

int F0 = 10; // PinLed 10
int F1 = 11; // PinLed 11
int F2 = 12; // PinLed 12
int F3 = 13; // PinLed 13

int X; // Entrada A
int Y; // Entrada B
int S; // Saída   S

// Procedimentos da ULA
int AB(int a, int b)
{
    return (a & b);
    // AB
}

int AxB(int a, int b)
{
    return (a ^ b);
    // AxorB
}
int AoB(int a, int b)
{
    return (a | b);
    // A+B
}

int An(int a)
{
    return (~a);
    // A’
}

void setup()
{
    Serial.begin(9600);  // Comunicação Serial
    pinMode(10, OUTPUT); // Saída LedPin 10 (azul)
    pinMode(11, OUTPUT); // Saída LedPin 11 (verde)
    pinMode(12, OUTPUT); // Saída LedPin 12 (amarelo)
    pinMode(13, OUTPUT); // Saída LedPin 13 (vermelho)
}

// Declaração de variáveis
String memoria[100];
String entrada = "";
String ponteiro = "4";
int pont = 4, qtd_cods = 0;
char x = '0', y = '0', code = '0';
int a = 0, b = 0;

int aux = 0, saida = 0;
String saida_hex = "0", output = "0", output_aux = "0";

// Função que acende e apaga os leds
void mostrar(String output)
{
    if (output[0] == '1')
    {
        digitalWrite(F3, HIGH);
    }
    else
    {
        digitalWrite(F3, LOW);
    }

    if (output[1] == '1')
    {
        digitalWrite(F2, HIGH);
    }
    else
    {
        digitalWrite(F2, LOW);
    }

    if (output[2] == '1')
    {
        digitalWrite(F1, HIGH);
    }
    else
    {
        digitalWrite(F1, LOW);
    }

    if (output[3] == '1')
    {
        digitalWrite(F0, HIGH);
    }
    else
    {
        digitalWrite(F0, LOW);
    }
}

void loop()
{
    if (Serial.available())
    {
        entrada = Serial.readString();   // Leitura da entrada do usuário
        qtd_cods = entrada.length() / 4; // Calcula a quantidade de códigos presentes na entrada

        int cortei = 0;
        int cortef = 3;
        // Loop que armazena as instruções no vetor memória
        for (int j = 4; j < 100; j++)
        {
            memoria[j] = entrada.substring(cortei, cortef);
            cortei += 4;
            cortef += 4;
        }
        // Atribuição dos primeiros valores do vetor memória
        memoria[0] = ponteiro;
        memoria[1] = "0";
        memoria[2] = "0";
        memoria[3] = "0";

        // Loop que percorre o vetor memória armazenando as
        for (int j = 4; j <= qtd_cods + 4; j++)
        {
            for (int i = 0; i <= qtd_cods + 4; i++)
            {
                Serial.print(memoria[i] + "|");
            }
            x = memoria[j][0]; // Pega o valor de x da instrução sendo executada
            y = memoria[j][1]; // Pega o valor de y da instrução sendo executada
            if (isdigit(x))
            {
                a = x - '0';
            }
            else
            {
                a = x - '0' - 7;
            }
            if (isdigit(y))
            {
                b = y - '0';
            }
            else
            {
                b = y - '0' - 7;
            }
            code = memoria[j][2]; // Pega o valor do op_code da instrução sendo executada

            /* Execução das instruções */
            if (code == '0')
            {
                saida = An(a);
            }
            else if (code == '1')
            {
                aux = AoB(a, b);
                saida = An(aux);
            }
            else if (code == '2')
            {
                aux = An(a);
                saida = AB(aux, b);
            }
            else if (code == '3')
            {
                saida = 0b0000;
            }
            else if (code == '4')
            {
                aux = AB(a, b);
                saida = An(aux);
            }
            else if (code == '5')
            {
                saida = An(b);
            }
            else if (code == '6')
            {
                saida = AxB(a, b);
            }
            else if (code == '7')
            {
                aux = An(b);
                saida = AB(a, aux);
            }
            else if (code == '8')
            {
                aux = An(a);
                saida = AoB(aux, b);
            }
            else if (code == '9')
            {
                aux = AxB(a, b);
                saida = An(aux);
            }
            else if (code == 'A')
            {
                saida = b;
            }
            else if (code == 'B')
            {
                saida = AB(a, b);
            }
            else if (code == 'C')
            {
                saida = 0b1111;
            }
            else if (code == 'D')
            {
                aux = An(b);
                saida = AoB(a, aux);
            }
            else if (code == 'E')
            {
                saida = AoB(a, b);
            }
            else if (code == 'F')
            {
                saida = a;
            }
            output = "";
            if (saida >= 0)
            {
                output_aux = String(saida, BIN);
                int complete = 4 - output_aux.length();
                for (int c = 0; c < complete; c++)
                {
                    output += '0';
                }
                output += output_aux;
                saida_hex = String(saida, HEX);
            }
            else
            {
                saida = 16 + saida;
                output_aux = String(saida, BIN);
                int complete = 4 - output_aux.length();
                for (int c = 0; c < complete; c++)
                {
                    output += '0';
                }
                output += output_aux;
                saida_hex = String(saida, HEX);
            }
            mostrar(output);
            ponteiro = String(pont + 1);
            pont++;
            // Atribuição dos novos valores ao vetor memória
            memoria[0] = ponteiro;
            memoria[1] = saida_hex;
            memoria[2] = x;
            memoria[3] = y;
            Serial.print("\n");
            delay(5000);
        }
        for (int i = 0; i <= qtd_cods + 4; i++)
        {
            Serial.print(memoria[i] + "|");
        }
    }
}