Feature: Filter page

  Scenario: Search case
    When I browse to the "/"
    When I enter "x" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Maxine"
    Then I should see "Maxine" in "firstName" column in row "1" of "student.table" table
    When I enter "12" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "27"
    Then I should see "candace.gordon@undefined.name" in "email" column in row "2" of "student.table" table
    When I enter "candace.gordon@undefined.name" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (932) 408-2012"
    Then I should see "Gordon" in "lastName" column in row "1" of "student.table" table

  Scenario: Age search case
    When I browse to the "/"
    Then I enter "1" into "input.age" field
    Then the css element "td:nth-of-type(3)" should contain the text "18"
    Then I should see "Gray" in "firstName" column in row "2" of "student.table" table
    Then I should see "Bridges" in "lastName" column in row "1" of "student.table" table
    When I enter "24" into "input.age" field
    Then the css element "td:nth-of-type(4)" should contain the text "bauer.spencer@undefined.us"

  Scenario: FirstName search case
    When I browse to the "/"
    When I enter "xi" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Maxine"
    Then I should see "+1 (845) 419-2949" in "phone" column in row "1" of "student.table" table
    When I enter "Austin" into "input.first" field
    Then the css element "td:nth-of-type(3)" should contain the text "35"
    Then I should see "Harvey" in "lastName" column in row "1" of "student.table" table

  Scenario: Phone search case
    When I browse to the "/"
    When I enter "9" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Bridges"
    Then I should see "Rose" in "lastName" column in row "9" of "student.table" table

  Scenario: LastName search case
    When I browse to the "/"
    When I enter "c" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "24" in "age" column in row "1" of "student.table" table
    Then I should see "Bauer" in "firstName" column in row "1" of "student.table" table
    When I enter "c" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "bauer.spencer@undefined.us" in "email" column in row "1" of "student.table" table