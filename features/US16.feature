Feature: Búsqueda de scooters cercanos
  Como cliente de MoviRent
  Quiero poder buscar scooters disponibles en mi distrito
  Para facilitar mi desplazamiento.

  Scenario: Búsqueda de scooters cercanos
    Given se encuentre en la sección de búsqueda de scooters
    When el usuario use un filtro por distrito
    Then se mostrará en una lista al usuario los scooters cercanos.

  Scenario: No encuentra disponibilidad
    Given el usuario use un filtro por distrito
    And no hay scooters disponibles en esa zona
    When el usuario realiza la búsqueda
    Then se muestra un mensaje indicando que no hay scooters disponibles en la zona seleccionada en este momento.
