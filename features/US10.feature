Feature: Visualizar perfil de usuario
  Como Owner/Cliente de MoviRent
  Quiero visualizar mi perfil personal
  Para visualizar mis datos actuales.

  Scenario: Acceder al perfil personal
    Given el usuario desee visualizar su información personal
    When ingrese a su perfil
    Then obtendrá toda la información que registró previamente.

  Scenario: Problema al acceder al perfil personal
    Given el usuario desee visualizar su información personal
    When intente ingresar a su perfil y experimente un error de conexión o de servidor
    Then no se visualizarán los datos del perfil.
