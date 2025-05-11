Feature: Registrar usuario
  Como visitante de la aplicación web de MoviRent
  Quiero poder crear una cuenta personal
  Para comenzar a hacer uso de la aplicación como Owner/Cliente.

  Scenario Outline: Usuario ingresa credenciales válidas
    Given el visitante desee crear una cuenta personal en la aplicación MoviRent
    When ingrese las credenciales de una cuenta inexistente en la base de datos MoviRent, una <contrasenia> que cumple con todos los requisitos de seguridad, su <DNI> real y acepte los términos y condiciones de uso
    Then se creará la cuenta de usuario.

    Examples:
      | contrasenia  | DNI         |
      | 123456       | 12345678    |

  Scenario Outline: Usuario ingresa credenciales inválidas
    Given el visitante desee crear una cuenta personal en la aplicación MoviRent
    When ingrese una <direccion> de correo electrónico o <contrasenia> o <DNI> que no cumplen con los requisitos especificados
    Then se le denegará la operación

    Examples:
      | direccion         | contrasenia  | DNI         |
      |usuario.com        | 1234         | 12345       |


