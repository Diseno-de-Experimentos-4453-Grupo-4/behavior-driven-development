Feature: Calificación y reseñas
  Como cliente de MoviRent
  Quiero poder calificar y dejar reseñas sobre mi experiencia con scooters utilizados y la zona donde los tomé
  Para ayudar a otros usuarios a tomar decisiones informadas.

  Scenario: Calificación y reseñas
    Given el usuario tenga una cuenta registrada en la página web
    And haya utilizado un vehículo recientemente
    When el usuario acceda a la opción de dejar reseña
    And seleccione la zona o tipo de scooter donde quiera dejar su reseña
    And escriba su reseña
    And haga clic en publicar
    Then se creará la reseña del usuario
    And será visible para otros usuarios.

  Scenario: Ver reseñas de otros clientes
    Given el usuario esté viendo las reseñas de otros usuarios sobre un scooter o una zona específica
    When el usuario busque reseñas
    Then se mostrarán las calificaciones promedio y las reseñas de otros usuarios para ayudar al usuario a tomar una decisión informada sobre su experiencia.
