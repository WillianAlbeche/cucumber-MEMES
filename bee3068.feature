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
