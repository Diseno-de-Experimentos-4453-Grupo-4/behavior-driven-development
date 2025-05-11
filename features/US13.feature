Feature: Visualizar un scooter en alquiler
  Como Owner de un scooter eléctrico
  Quiero visualizar las publicaciones con la información y especificaciones de mi scooter
  Para verificar que toda la información ingresada es correcta y actualizada.

  Scenario: Owner visualiza su scooter en MoviRent
    Given el Owner se encuentre en la aplicación de MoviRent
    When se dirija a la opción de “Ver mis scooters”
    Then el sistema le mostrará la información de los scooters publicados.

  Scenario: Owner cancela la visualización de su scooter en MoviRent
    Given el Owner se encuentre en la aplicación de MoviRent
    When se dirija a la opción de “Ver mis scooters”
    And le dé al botón de “Salir”
    Then el sistema lo sacará de la ventana de “Ver mis scooters”.
