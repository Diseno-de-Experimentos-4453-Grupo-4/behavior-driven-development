Feature: Endpoint Historial
  Como desarrollador de MoviRent
  Quiero hacer uso del endpoint /historial
  Para gestionar los datos del historial de un usuario.

  Scenario: Solicitud GET exitosa
    Given el desarrollador hace una solicitud GET al endpoint /historial
    When existan registros en el historial del usuario
    Then el desarrollador recibe una respuesta 200 OK con el historial.

  Scenario: Solicitud DELETE exitosa
    Given el desarrollador quiera eliminar un historial
    When el historial exista
    Then el desarrollador recibe una respuesta 200 OK confirmando la eliminación.

  Scenario: Solicitud GET fallida
    Given el desarrollador hace una solicitud GET al endpoint /historial
    When no existan registros en el historial
    Then el desarrollador recibe una respuesta 404 Not Found.

  Scenario: Solicitud DELETE fallida
    Given el desarrollador quiera eliminar un historial
    When el historial no exista
    Then el desarrollador recibe una respuesta 404 Not Found.
