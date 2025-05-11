Feature: Implementación de la sección "Planes" de la Landing Page
  Como visitante de la landing page
  Quiero visualizar la sección "Planes"
  Para tener información de las membresías de la aplicación


  Scenario: Acceder a la sección "Planes"
    Given el visitante se encuentre dentro de la landing page
    When navegue hasta la sección “Planes”
    Then se muestra la información relacionada a los planes de pago que se ofrecen y cuáles son los beneficios de cada uno de estos

  Scenario: Error en el sistema
    Given el visitante se encuentre dentro de la landing page
    When ocurra algún problema con el sistema
    Then no se muestra la sección Home
    And se muestra un mensaje de error
