Feature: Implementación de la sección "About the Team" de la Landing Page
  Como visitante de la landing page
  Quiero visualizar la sección "About the Team"
  Para tener información de los miembros que conforman la startup.


  Scenario: Conocer al equipo en "About the Team"
    Given el visitante se encuentre dentro de la landing page
    When navegue hasta la sección “About the Team”
    Then se muestra la información correspondiente a los videos about the project y about the team, además de la información de cada uno de los miembros

  Scenario: Error en el sistema
    Given el visitante se encuentre dentro de la landing page
    When ocurra algún problema con el sistema
    Then no se muestra la sección Home
    And se muestra un mensaje de error
