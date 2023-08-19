# cucumber-MEMES

- Arthur Ibarra
- Pablo Alles
- Willian Albeche

## Descrição

Este repositório é um exercício desenvolvido durante a disciplina de Métodos e Modelos para Engenharia de Software no semestre 2023/2 na PUCRS. Contém uma especificação de requisito funcional em Gherkin e um diagrama pUML para o problema dos Meteoritos do BeeCrowd (https://www.beecrowd.com.br/judge/en/problems/view/3068).

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

```gherkin
@domain
Feature: Counting Meteorites Inside a Farm

    Narrative:

    As a farmer who's passionate about astronomy,
    I want to determine the count of meteorites that have fallen on my farm
    So that I can understand the impact of celestial events on my property

    Scenario: Calculating the number of meteorites inside a farm
        Given the coordinates of the upper left corner (X1, Y1) and lower right corner (X2, Y2) of a farm
        And the number of meteorites N
        And the coordinates of N meteorites
        When calculating the number of meteorites inside the farm
        Then the program should output the test identifier and the count of meteorites inside the farm

    Scenario: No meteorites inside the farm
        Given the coordinates of the upper left corner (X1, Y1) and lower right corner (X2, Y2) of a farm
        And N is 0
        When calculating the number of meteorites inside the farm
        Then the program should output the test identifier and 0 meteorites

    Scenario: Empty farm
        Given X1, Y1, X2, and Y2 are all 0
        When ending the input
        Then the program should terminate

    Scenario Outline: Multiple test cases
        Given the coordinates of the upper left corner (<X1>, <Y1>) and lower right corner (<X2>, <Y2>) of a farm
        And the number of meteorites <N>
        And the coordinates M1X, M1Y... of <N> meteorites
        When calculating the number of meteorites inside the farm
        Then the program should output the test identifier and <ExpectedCount> meteorites

        Examples:
            | X1 | Y1 | X2 | Y2 | N | M1X | M1Y | M2X | M2Y | M3X | M3Y | ExpectedCount |
            | 2  | 4  | 5  | 1  | 2 | 1   | 2   | 3   | 3   | -   | -   | 1             |
            | 2  | 4  | 3  | 2  | 3 | 1   | 1   | 2   | 2   | 3   | 3   | 2             |
            | 0  | 0  | 0  | 0  | 0 | -   | -   | -   | -   | -   | -   | 0             |
```

## Diagrama pUML

![Class Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/WillianAlbeche/cucumber-MEMES/main/class-diagram.puml)`

## Conclusões

Com este exercício podemos perceber a facilidade que a criação de modelos oferecem ao realizar determinadas atividades mencionadas por Forward <em>et alli</em> em <em>"Problems and Opportunities for Model-Centric vs. Code-Centric Development: A Survey of Software Professionals"</em>. Atividades como explicar o projeto/sistema a um novo participante, compreender o comportamento do programa e criar um novo programa são extremamente facilitadas pelo uso de modelos dado que requisitos e casos podem ser melhores visualizados garantindo a própria estrutura de funcionalidades e especificações necessárias.