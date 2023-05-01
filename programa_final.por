programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() { 
    real opcao, lado_a, lado_b, lado_c, x
  
    escreva("Programa criado em dupla:\nFernando Marino e Antônio Guedes")

    enquanto(opcao != 5) {
      escreva("\n\n============ MENU DE OPÇÕES =============\n")
      escreva("O que você quer calcular?\n 1.Cubo\n 2.Paralelepipedo\n 3.Esfera\n 4.Cilindro\n 5. Sair\n Digite o número de sua opção: ")
      leia(opcao)
      limpa()

        escolha (opcao)
        {
          caso 1:
            escreva("Digite o lado do cubo: ")
            leia(lado_a)
            x = calcularCubo(lado_a)
            escreva("Resultado = ", x)
            pare
          caso 2:
            escreva("Digite os lados do paralelepipedo:\n")
            escreva("Digite a base: ")
            leia(lado_a)
            escreva("Digite a altura: ")
            leia(lado_b)
            escreva("Digite a largura: ")
            leia(lado_c)
            x = calcularParalelepipedo(lado_a, lado_b, lado_c)
            escreva("Resultado = ", x)
            pare
          caso 3:
            escreva("Digite o raio da esfera: ")
            leia(lado_a)
            x = calcularEsfera(lado_a)
            escreva("Resultado ", x)
            pare
          caso 4:
            escreva("Digite o raio do cilindro: ")
            leia(lado_a)
            escreva("Digitea a altura do cilindro: ")
            leia(lado_b)
            x = calcularCilindro(lado_a, lado_b)
            escreva("Resultado ", x)
            pare
          caso 5: 
          escreva ("Você saiu do programa.")
            pare
          caso contrario:
          escreva ("Opção inválida! Tente novamente")
        } 
    }
  
  funcao real calcularCubo (real lado_a) {
    real resultado 
    resultado = mat.potencia(lado_a, 3.0)
    
    retorne resultado
  }

  funcao real calcularParalelepipedo (real lado_a, real lado_b, real lado_c) {
  real resultado
  resultado = lado_a * lado_b * lado_c
    
    retorne resultado
  } 	

  funcao real calcularEsfera (real lado_a) {
  real resultado
  resultado = (4 * 3.14159265359 * mat.potencia(lado_a, 3.0))/3

    retorne resultado
  }

  funcao real calcularCilindro (real lado_a, real lado_b) {
  real resultado
  resultado = 3.14159265359  * mat.potencia(lado_a, 2,0) * lado_b

    retorne resultado
  }

}
