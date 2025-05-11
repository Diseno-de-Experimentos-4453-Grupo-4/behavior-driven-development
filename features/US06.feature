Feature: Landing Page Responsiva a diferentes tamaños de pantalla
  Como visitante interesado
  Quiero que la landing page tenga un diseño responsivo
  Para acceder a ella desde cualquier dispositivo.


  Scenario: Acceder a la landing page desde un ordenador
    Given el visitante se encuentre usando un ordenador de escritorio
    When ingrese a la landing page
    Then se muestra la landing page adaptada correctamente a la pantalla del ordenador

  Scenario: Acceder a la landing page desde un dispositivo móvil
    Given el visitante se encuentre usando un dispositivo móvil
    When ingrese a la landing page
    Then se muestra la landing page adaptada correctamente a la pantalla del dispositivo móvil
