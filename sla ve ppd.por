programa
{
	inclua biblioteca Util
	inclua biblioteca Texto --> T
	funcao inicio()
	{
		inteiro opc=0
		faca{
			
		limpa()	
		escreva("\t***Menu Principal*\n")
		escreva("\t======================\n")
		//Mostrar opções
		escreva("\t[1] Cálculos \n")
		escreva("\t[2] Par ímpar\n")
		escreva("\t[3] Comparar números\n")
		escreva("\t[4] Tabuada\n")
		escreva("\t[5] Cancelar\n")
		escreva("\t==============\n")
		//Ler opção
		escreva("\tDigite sua opção: ")
		leia(opc)
		//Decisão
		escolha(opc){
			caso 1:
				calculos()
			pare
			caso 2:
				imparpar()
			pare
			caso 3:
				comparar()
			pare
			caso 4:
				tabuada()
			pare
			caso 5:

			pare
			caso contrario:
				escreva("\n\t**Opção inválida**\n")
				Util.aguarde(2000)
			pare
			
			}	
		}enquanto(opc!=4)
	}
	funcao calculos(){
		real op, soma, sub,mult, divi, n1, n2
		cadeia resp
		faca{
			escreva(" 1) Soma \n 2) Subtração \n 3) Multiplicação \n 4) Divisão \n Escolha uma operação: ")
			leia(op)
			limpa()
			escreva("digite um número: ")
			leia(n1)
			limpa()
			escreva("digite outro número: ")
			leia(n2)
			limpa()
			//Operações
			soma = n1+n2
			sub = n1-n2
			mult = n1*n2
			divi = n1/n2
			//Resultado
			se(op==1){
				escreva(n1+" + "+n2+" é igual a "+soma+"\n")//Soma
			}senao se(op==2){
				escreva(n1+" - "+n2+" é igual a "+sub+"\n")//Subtração
			}senao se(op==3){
				escreva(n1+" x "+n2+" é igual a "+mult+"\n")//Multiplicação
			}senao se(op==4){
				escreva(n1+" ÷ "+n2+" é igual a "+divi)//Divisão
			}senao{
				escreva("A operação ou número não é válido(a)")
			}
			escreva("\nDeseja continuar? (s/n)\n")
			leia(resp)
			}enquanto(T.caixa_baixa(resp)=="s" ou T.caixa_baixa(resp)=="sim")
			
		}
	funcao imparpar(){
			inteiro num1, num2
			cadeia resp
			faca{
				limpa()
			escreva("Digite um número: ")
			leia(num1)
			se (num1%2 == 1){
				escreva("O número é ímpar")
			}
			senao{
				escreva("O número é par")
				}
			escreva("\nDeseja continuar? (s/n)\n")
			leia(resp)
			}enquanto(T.caixa_baixa(resp)=="s" ou T.caixa_baixa(resp)=="sim")
		}
	funcao comparar(){
			real num1, num2
		 	cadeia resp
		 	faca{
		 	limpa()
		 	escreva("Digite um número: ")
		 	leia(num1)
		 	limpa()
		 	escreva("Digite outro número: ")
		 	leia(num2)
		 	se(num1>num2){
		 		escreva(num1+" é maior que "+num2)
		 	}senao se(num1==num2){
		 		escreva(num1+" é igual a "+num2)
		 	}senao{
		 		escreva(num1+" é menor que "+num2)
		 	}
		 	escreva("\nDeseja continuar? (s/n) ")
		 	leia(resp)
		 	}enquanto(Texto.caixa_baixa(resp)=="sim" ou Texto.caixa_baixa(resp)=="s")
		}
	funcao tabuada(){
			real n
			inteiro i=0
			cadeia resp
			faca{
				limpa()
				escreva("Digite um número: ")
				leia(n)
				faca{
				escreva(n+" x "+i+" = "+n*i+"\n")
				i=i+1
				}enquanto(i<=10)
				escreva("\nDeseja continuar? (s/n) ")
		 		leia(resp)
			}enquanto(Texto.caixa_baixa(resp)=="sim" ou Texto.caixa_baixa(resp)=="s")
		}						
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2806; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */