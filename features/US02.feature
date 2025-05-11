Feature: Implementación de la sección "Sobre Nosotros" de la Landing Page
  Como visitante de la landing page
  Quiero visualizar la sección "Sobre Nosotros"
  Para tener información de la startup CiberMach.

  Scenario: Acceder a la sección "Sobre Nosotros"
    Given el visitante se encuentre dentro de la landing page
    When navegue hasta la sección “Sobre Nosotros”
    Then se muestra información importante sobre la startup

  Scenario: Error en el sistema
    Given el visitante se encuentre dentro de la landing page
    When ocurra algún problema con el sistema
    Then no se muestra la sección Home
    And se muestra un mensaje de error
