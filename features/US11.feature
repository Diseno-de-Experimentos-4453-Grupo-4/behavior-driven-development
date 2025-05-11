Feature: Cambiar datos personales
  Como Owner/Cliente de MoviRent
  Quiero cambiar los datos asociados a mi perfil
  Para actualizar la información.

  Scenario Outline: Cambiar información personal
    Given el usuario quiera cambiar su <dato>
    When ingrese el nuevo <valor>, este sea validado por el sistema
    And confirme su intención de proceder con el cambio
    Then el nuevo <dato> será guardado y la información actualizada.

    Examples:
      | dato         | valor          |
      | contraseña   | nuevaClave123  |
      | nombre       | NuevoNombre    |
      | foto         | nuevaFoto.jpg  |
      | celular      | 987654321      |

  Scenario: Ingreso de datos inválidos
    Given el usuario quiera cambiar su información
    When ingrese datos inválidos
    Then se mostrará un mensaje de dato no válido.

  Scenario: No cambiar información
    Given el usuario no quiera cambiar su información
    When aparezca el pop up para confirmar el cambio
    And seleccione la opción para cancelar cambio
    Then el pop up desaparecerá y el cambio no se realizará.
