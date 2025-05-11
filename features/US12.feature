Feature: Publicar scooter en alquiler
  Como Owner de un scooter eléctrico
  Quiero crear publicaciones con la información y especificaciones de mi scooter
  Para que pueda ser alquilado por un cliente.

  Scenario: Owner publica su scooter en MoviRent
    Given el Owner cuente con una cuenta en nuestra aplicación
    And se encuentre en la opción de “Publicar scooter”
    When llene todas las casillas obligatorias para publicar su scooter
    And le dé al botón “Publicar”
    Then el sistema le muestra un aviso de que su scooter ha sido publicado.

  Scenario: Owner cancela la publicación de su scooter en MoviRent
    Given el Owner cuente con una cuenta en nuestra aplicación
    And se encuentre en la opción de “Publicar scooter”
    When le dé al botón de “Cancelar”
    Then el sistema le muestra un aviso de que se ha cancelado la publicación.

  Scenario: Owner no publica su scooter en MoviRent
    Given el Owner cuente con una cuenta en nuestra aplicación
    And se encuentre en la opción de “Publicar scooter”
    When no llene todas las casillas obligatorias para publicar su scooter
    And le dé al botón “Publicar”
    Then el sistema le muestra un aviso de que no se ha completado la información requerida
    And no se publica su scooter.
