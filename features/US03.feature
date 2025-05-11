Feature: Implementación de la sección "Servicios" de la Landing Page
  Como visitante de la landing page
  Quiero visualizar la sección "Servicios"
  Para tener información de los servicios ofrecidos por la aplicación</td>


  Scenario: Acceder a la sección "Servicios"
    Given el visitante se encuentre dentro de la landing page
    When navegue hasta la sección “Servicios”
    Then se muestra información sobre los servicios que ofrece MoviRent

  Scenario: Error en el sistema
    Given el visitante se encuentre dentro de la landing page
    When ocurra algún problema con el sistema
    Then no se muestra la sección Home
    And se muestra un mensaje de error
