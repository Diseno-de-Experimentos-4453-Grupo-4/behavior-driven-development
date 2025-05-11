Feature: Endpoint Reviews
  Como desarrollador de MoviRent
  Quiero hacer uso del endpoint /reviews
  Para gestionar los datos de las reseñas.

  Scenario: Solicitud GET exitosa
    Given el desarrollador hace una solicitud GET al endpoint /reviews
    When existan registros de reseñas disponibles
    Then el desarrollador recibe una respuesta 200 OK con una lista de reseñas.

  Scenario: Solicitud POST exitosa
    Given el desarrollador quiere crear una nueva reseña
    When los datos de la reseña sean válidos y completos
    Then el desarrollador recibe una respuesta 201 Created con los detalles de la reseña creada.

  Scenario: Solicitud GET fallida
    Given el desarrollador hace una solicitud GET al endpoint /reviews
    When no existan registros de reseñas
    Then el desarrollador recibe una respuesta 404 Not Found.

  Scenario: Solicitud POST fallida
    Given el desarrollador quiere crear una nueva reseña
    When los datos de la reseña estén incompletos o no sean válidos
    Then el desarrollador recibe una respuesta 400 Bad Request.
