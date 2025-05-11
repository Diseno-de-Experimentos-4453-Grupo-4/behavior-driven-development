Feature: Iniciar sesión
  Como Owner/Cliente de MoviRent
  Quiero iniciar sesión
  Para acceder a los beneficios que ofrece la aplicación.

  Scenario Outline: Usuario ingresa credenciales válidas
    Given el usuario posee una cuenta en la aplicación MoviRent
    When ingrese las credenciales necesarias correctamente: <correo> y <contrasenia>
    Then el sistema permitirá el acceso a la aplicación.

    Examples:
      | correo            | contrasenia  |
      | usuario@correo.com | 123456       |

  Scenario Outline: Usuario ingresa credenciales incorrectas
    Given el usuario posee una cuenta en la aplicación MoviRent
    When ingrese alguna credencial de manera incorrecta: <correo> o <contrasenia>
    Then el sistema denegará la solicitud.

    Examples:
      | correo            | contrasenia  |
      | usuario@correo.com | 1234         |
