Feature: Alquiler Scooter
  Como Cliente de MoviRent
  Quiero alquilar un scooter
  Para llegar rápido a mi destino.

  Scenario: Cliente alquila un scooter en MoviRent
    Given el Cliente se encuentra en el apartado de “Scooters”
    And le dé al botón “Ver detalles” de una publicación
    And se dé al botón de “Alquilar”
    When el sistema le muestre la ventana de pago
    And se complete la información requerida
    Then el sistema le mostrará un aviso de que el scooter ha sido alquilado con éxito y que puede ir a recogerlo para su uso.

  Scenario: Cliente cancela el alquiler de un scooter en MoviRent
    Given el Cliente se encuentra en el apartado de “Scooters”
    And le dé al botón “Ver detalles” de una publicación
    And se dé al botón de “Alquilar”
    When el sistema le muestre la ventana de pago
    And le dé al botón de “Cancelar”
    Then el sistema le mostrará un aviso de que se ha cancelado la operación.

  Scenario: Cliente no alquila un scooter en MoviRent
    Given el Cliente se encuentra en el apartado de “Scooters”
    And le dé al botón “Ver detalles” de una publicación
    And se dé al botón de “Alquilar”
    When el sistema le muestre la ventana de pago
    And no se complete la información requerida
    Then el sistema le mostrará un aviso de que no se ha podido proceder con el pago.
