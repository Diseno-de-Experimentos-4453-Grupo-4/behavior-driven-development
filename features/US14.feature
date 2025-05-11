Feature: Editar Scooter en alquiler
  Como Owner de un scooter eléctrico
  Quiero editar la publicación de mi scooter
  Para que la información proporcionada a los clientes esté siempre actualizada.

  Scenario: Owner edita la publicación de su scooter en MoviRent
    Given el Owner se encuentra en el apartado de “Mis scooters”
    And le dé al botón “Editar” de una publicación
    When actualice correctamente la información
    Then el sistema le muestra un aviso de que su scooter ha sido actualizado.

  Scenario: Owner cancela la edición de la publicación de su scooter en MoviRent
    Given el Owner se encuentra en el apartado de “Mis scooters”
    And le dé al botón “Editar” de una publicación
    When le dé al botón de “Cancelar”
    Then el sistema cierra la ventana de edición de publicación.

  Scenario: Owner no edita la publicación de su scooter en MoviRent
    Given el Owner se encuentra en el apartado de “Mis scooters”
    And le dé al botón “Editar” de una publicación
    When ingrese incorrectamente la información
    And le dé al botón de “Aceptar”
    Then el sistema le muestra un aviso de que su scooter no ha sido actualizado.
