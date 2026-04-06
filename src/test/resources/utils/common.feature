Feature: Karate Common Functions


  Scenario: Common Functions

    * def sleep =
      """
      function(seconds){
        for(i = 0; i <= seconds; i++)
        {
          java.lang.Thread.sleep(1000);
        }
      }
      """

    * def random = function(max){ return Math.floor(Math.random() * max) + 1 }

    * def uuid =
      """
      function() {
      return java.util.UUID.randomUUID()
      }
      """

    * def todayDate =
      """
      function() {
        var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
        var sdf = new SimpleDateFormat("dd/MM/yyyy");
        var date = new java.util.Date();
        return sdf.format(date);
      }
      """
