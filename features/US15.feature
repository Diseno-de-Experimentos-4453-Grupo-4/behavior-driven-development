Feature: Eliminar scooter en alquiler
  Como Owner
  Quiero eliminar un scooter en alquiler
  Para mantener la integridad de la información almacenada.

  Scenario: Owner borra scooter en alquiler
    Given el Owner se encuentra en el apartado de “Mis scooters”
    And le dé al botón “Eliminar” de una publicación
    When confirme su intención de borrar los datos
    Then el sistema eliminará de la base de datos toda la información almacenada de ese scooter.

  Scenario: Owner decide no borrar scooter
    Given el Owner se encuentra en el apartado de “Mis scooters”
    And le dé al botón “Eliminar” de una publicación
    When niegue su intención de borrar los datos
    Then el sistema no eliminará la información del scooter.
