Feature: Endpoint User
  Como desarrollador de MoviRent
  Quiero hacer uso del endpoint /user
  Para gestionar los datos de los usuarios.

  Scenario: Solicitud GET exitosa
    Given el desarrollador hace una solicitud GET al endpoint /user
    When existan registros de usuarios disponibles
    Then el desarrollador recibe una respuesta 200 OK con una lista de usuarios.

  Scenario: Solicitud POST exitosa
    Given el desarrollador quiere crear un nuevo usuario
    When los datos del usuario sean válidos y completos
    Then el desarrollador recibe una respuesta 201 Created con los detalles del usuario creado.

  Scenario: Solicitud PUT exitosa
    Given el desarrollador quiera actualizar un usuario existente
    When el usuario con el ID proporcionado exista
    Then el desarrollador recibe una respuesta 200 OK con los detalles del usuario actualizado.

  Scenario: Solicitud DELETE exitosa
    Given el desarrollador quiera eliminar un usuario
    When el usuario con el ID proporcionado exista
    Then el desarrollador recibe una respuesta 200 OK confirmando la eliminación.

  Scenario: Solicitud GET fallida
    Given el desarrollador hace una solicitud GET al endpoint /user
    When no existan registros de usuarios
    Then el desarrollador recibe una respuesta 404 Not Found.

  Scenario: Solicitud POST fallida
    Given el desarrollador quiere crear un nuevo usuario
    When los datos del usuario estén incompletos o no sean válidos
    Then el desarrollador recibe una respuesta 400 Bad Request.

  Scenario: Solicitud PUT fallida
    Given el desarrollador quiera actualizar un usuario
    When el usuario con el ID proporcionado no exista
    Then el desarrollador recibe una respuesta 404 Not Found.

  Scenario: Solicitud DELETE fallida
    Given el desarrollador quiera eliminar un usuario
    When el usuario con el ID proporcionado no exista
    Then el desarrollador recibe una respuesta 404 Not Found.
