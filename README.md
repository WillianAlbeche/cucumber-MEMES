# cucumber-MEMES

- Arthur Ibarra
- Pablo Alles
- Willian Albeche

## Descrição
Este repositório é um exercício desenvolvido durante a disciplina de Métodos e Modelos para Engenharia de Software no semestre 2023/2 na PUCRS. Contém uma especificação de requisito funcional em Gherkin e um diagrama UML para o problema dos Meteoritos do BeeCrowd (https://www.beecrowd.com.br/judge/en/problems/view/3068).

## Problema
Em noites sem nuvens pode-se muitas vezes observar pontos brilhantes no céu que se deslocam com grande velocidade, e em poucos segundos desaparecem de vista: são as chamadas estrelas cadentes, ou meteoros. Meteoros são na verdade partículas de poeira de pequenas dimensões que, ao penetrar na atmosfera terrestre, queimam-se rapidamente (normalmente a uma altura entre 60 e 120 quilômetros). Se os meteoros são suficientemente grandes, podem não queimar-se completamente na atmosfera e dessa forma atingem a superfície terrestre: nesse caso são chamados de meteoritos.

Zé Felício é um fazendeiro que adora astronomia e descobriu um portal na Internet que fornece uma lista das posições onde caíram meteoritos. Com base nessa lista, e conhecendo a localização de sua fazenda, Zé Felício deseja saber quantos meteoritos caíram dentro de sua propriedade. Ele precisa de sua ajuda para escrever um programa de computador que faça essa verificação automaticamente.

São dados:

• uma lista de pontos no plano cartesiano, onde cada ponto corresponde à posição onde caiu um meteorito;

• as coordenadas de um retângulo que delimita uma fazenda. As linhas que delimitam a fazenda são paralelas aos eixos cartesianos. Sua tarefa é escrever um programa que determine quantos meteoritos caíram dentro da fazenda (incluindo meteoritos que caíram exatamente sobre as linhas que delimitam a fazenda).

## Entrada
O programa deve poder ler vários conjuntos de testes. Sendo a primeira linha de um conjunto de teste quatro números inteiros X1, X2, Y1 e Y2, em que (0 ≤ Y2 ≤ Y1 ≤ 10.000) e (0 ≤ X1 ≤ X2 ≤ 10.000), e o par (X1, Y1) é a coordenada do canto superior esquerdo e (X2, Y2) do canto inferior direito do retângulo que delimita a fazenda. A segunda linha contém o inteiro, N (0 ≤ N ≤ 10.000), que indica o número de meteoritos. Seguem-se N linhas, cada uma contendo dois números inteiros X (0 ≤ X ≤ 10.000) e Y (0 ≤ Y ≤ 10.000), correspondendo às coordenadas de cada meteorito. O final da entrada é indicado por X1 = Y1 = X2 = Y2 = 0.

## Saída
A saída deve para cada conjunto de testes da entrada deve produzir duas linhas na saída. A primeira linha deve conter um identificador do conjunto de teste, no formato “Teste n”, onde n é numerado a partir de 1. A segunda linha deve conter o número de meteoritos que caíram dentro da fazenda.

## Gherkin


## Diagrama UML
