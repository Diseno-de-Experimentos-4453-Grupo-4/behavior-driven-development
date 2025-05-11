Feature: Endpoint Scooter
  Como desarrollador de MoviRent
  Quiero hacer uso del endpoint /scooter
  Para gestionar los datos de los scooters.

  Scenario: Solicitud GET exitosa
    Given el desarrollador hace una solicitud GET al endpoint /scooter
    When existan registros de scooters disponibles
    Then el desarrollador recibe una respuesta 200 OK con una lista de scooters.

  Scenario: Solicitud POST exitosa
    Given el desarrollador quiere crear un nuevo scooter
    When los datos del scooter sean válidos y completos
    Then el desarrollador recibe una respuesta 201 Created con los detalles del scooter creado.

  Scenario: Solicitud PUT exitosa
    Given el desarrollador quiera actualizar un scooter existente
    When el scooter con el ID proporcionado exista
    Then el desarrollador recibe una respuesta 200 OK con los detalles del scooter actualizado.

  Scenario: Solicitud DELETE exitosa
    Given el desarrollador quiera eliminar un scooter
    When el scooter con el ID proporcionado exista
    Then el desarrollador recibe una respuesta 200 OK confirmando la eliminación.

  Scenario: Solicitud GET fallida
    Given el desarrollador hace una solicitud GET al endpoint /scooter
    When no existan registros de scooters
    Then el desarrollador recibe una respuesta 404 Not Found.

  Scenario: Solicitud POST fallida
    Given el desarrollador quiere crear un nuevo scooter
    When los datos del scooter estén incompletos o no sean válidos
    Then el desarrollador recibe una respuesta 400 Bad Request.

  Scenario: Solicitud PUT fallida
    Given el desarrollador quiera actualizar un scooter
    When el scooter con el ID proporcionado no exista
    Then el desarrollador recibe una respuesta 404 Not Found.

  Scenario: Solicitud DELETE fallida
    Given el desarrollador quiera eliminar un scooter
    When el scooter con el ID proporcionado no exista
    Then el desarrollador recibe una respuesta 404 Not Found.
