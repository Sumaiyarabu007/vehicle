<!doctype html>
<html lang="en">
<head>
    <title>Add Info</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style.css">

    @include("mtnco.mtncocss")

</head>
<body>
    
<div class="container" style="background-color:White" >
   
    
    <!-- ***** Reservation Us Area Starts ***** -->
<section class="section" id="reservation" style="position:relative; left:80px; top:60px;" >
    <div class="container">
        <div class="row">
             
            <div class="col-lg-6">
                <div class="contact-form">
                <form id="contact" action="{{url('/edit', $data->id)}}" method="post" enctype="multipart/form-data">

@csrf                     

                      <div class="row">
                        <div class="col-lg-12">
                            <h4>EDIT INFO</h4>
                        </div>
                        <div class="col-lg-6">
<h6 style="color:black;">Date</h6>
    <input type="date" name="date" value="{{$data->date}}" >
</div>
    
    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Authority</h6>
      <fieldset>
      <select name="authority" id="type" value="{{$data->authority}}">
            <option value="Authority">Authority</option>
            <option value="Training" id="Training">Training</option>
            <option value="Admin" id="Admin">Admin</option>
            <option value="Ammenity" id="Ammenity">Ammenity</option>
        </select>
       
      </fieldset>
    </div>

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Destination</h6>
      <fieldset>
        <input name="destination" type="place" id="place" placeholder="" required="" value="{{$data->destination}}">
      </fieldset>
    </div>

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">KM Reading</h6>
      <fieldset>
        <input name="km_reading" type="distance" id="distance" placeholder="" required="" value="{{$data->km_reading}}">
      </fieldset>
    </div>

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">When In</h6>
      <fieldset>
      <input name="when_in" type="time" id="time" placeholder="when in" required="" value="{{$data->when_in}}">
    </fieldset>
    
    </div>

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">When Out</h6>
      <fieldset>
      <input name="when_out" type="time" id="time" placeholder="when out" required="" value="{{$data->when_out}}">
    </fieldset>
    
    </div>

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Present Fuel</h6>
      <fieldset>
      <input name="present_fuel" type="litre" id="litre" placeholder="" required="" value="{{$data->present_fuel}}">
    </fieldset>
    </div>






    <br> 
    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Comments</h6>
      <fieldset>
        <textarea name="comment" rows="6" id="message" placeholder="" required="" value="{{$data->comment}}"></textarea>
      </fieldset>
    </div>
    <div class="col-lg-12">
      <fieldset>
        <button type="submit" id="form-submit" value="submit" class="main-button-icon">Submit</button>
      </fieldset>
    </div>
      

    <br>
            <br>
            
            <a  class="btn btn-success" href="{{url('/jeep1')}}">Go to</a></td>
                       
                      </div>
                    </form>
                    <br>
                    
                   
                </div>
            </div>
        </div>
    </div>
</section>

</div>
<!-- ***** Reservation Area Ends ***** -->


<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/accordions.js"></script>
<script src="assets/js/datepicker.js"></script>
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script> 
<script src="assets/js/slick.js"></script> 
<script src="assets/js/lightbox.js"></script> 
<script src="assets/js/isotope.js"></script> 

<!-- Global Init -->
<script src="assets/js/custom.js"></script>
<script>

    $(function() {
        var selectedClass = "";
        $("p").click(function(){
        selectedClass = $(this).attr("data-rel");
        $("#portfolio").fadeTo(50, 0.1);
            $("#portfolio div").not("."+selectedClass).fadeOut();
        setTimeout(function() {
          $("."+selectedClass).fadeIn();
          $("#portfolio").fadeTo(50, 1);
        }, 500);
            
        });
    });

</script>

</div>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

@include("mtnco.mtncoscript")

</body>
</html>
