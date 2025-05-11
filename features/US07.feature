Feature: Acceder a la aplicación desde la landing page
  Como visitante de la landing page
  Quiero poder acceder a la aplicación MoviRent desde la landing page
  Para comenzar a utilizar las funcionalidades ofrecidas


  Scenario: Usuario ingresa a aplicación
    Given el visitante se encuentra en la landing page
    When seleccione la opción que permite el acceso al software elaborado
    Then es redirigido a la aplicación desplegada

  Scenario: Fallo en el acceso a la aplicación
    Given el visitante se encuentre en la landing page
    When seleccione la opción que permite el acceso al software elaborado y ocurra un error en el proceso de redirección
    Then el usuario obtiene un mensaje de error
