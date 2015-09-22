// gon.sum
 $(document).ready(function() {

  var CalcMoon = $('#calculate_moon')

  CalcMoon.click(function(){

      console.log("boom")
      console.log(gon.sum)
     var spacePercent = (gon.sum/384400)
     console.log(spacePercent)
     var widthValue = spacePercent * 780
     console.log(widthValue)

     $('#redline').animate({
                        width: widthValue
                    }, 3000, function() {
                        setTimeout(
                          function() {
                        $('#how_far').css('visibility', 'visible');
                          },
                          1000);
                        
                        setTimeout(
                          function() {
                              $('#to_go').css('visibility', 'visible');
                          },
                          2500);

                        setTimeout(
                          function() {
                              $('#back_to_user').css('visibility', 'visible');
                          },
                          3500);

                        });
   })

  $('#glance_title').click(function(){
      console.log("hooray")
      $('#glance_info').slideToggle( "slow", function() {

       });

  })

  $('#session_title').click(function(){
      console.log("hooray")
      $('#session_info').slideToggle( "slow", function() {

       });

  })

})