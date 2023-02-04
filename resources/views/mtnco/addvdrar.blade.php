<!doctype html>
<html lang="en">
<head>
    <title>Add Request</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style.css">

    @include("mtnco.mtncocss")

</head>
<body>

<div class="container-scroller" style="background-color:White" >
    @include("mtnco.navbar")

    <!-- ***** Reservation Us Area Starts ***** -->
<section class="section" id="reservation" style="position:relative; left:80px; top:-220px;" >
    <div class="container">
        <div class="row">

            <div class="col-lg-6">
                <div class="contact-form">
                    <form id="contact" action="/requestlist" method="post" enctype="multipart/form-data">

                        @csrf

                      <div class="row">
                        <div class="col-lg-12">
                            <h4>ADD REQUEST</h4>
                        </div>


            <!--<div class="col-lg-6">

            <h6 style="color:black;">Date</h6>
        <div id="filterDate2">
          <div class="input-group date" data-date-format="dd/mm/yyyy">
            <input type="date" name="date" value="date-one" >

          </div>
        </div>
    </div> -->


<div class="col-lg-6">
<h6 style="color:black;">Date</h6>
    <input type="date" name="date" value="date-one" >
</div>


    {{-- <div class="col-md-6 col-sm-12">
        <h6 style="color:black;">Vehicle</h6>
        <fieldset>
            <select name="vehicle_id" id="cars" required>
                <option value="">--Select A Vhicle--</option>
                @foreach ($vhecleList as $item)

                    <option value="{{$item->id}}">{{$item->v_type.'-'.$item->v_id.'-'.$item->v_name}}</option>

                @endforeach

            </select>
        </fieldset>
    </div> --}}

    {{-- <div class="col-md-6 col-sm-12">
        <h6 style="color:black;">Vehicle</h6>
        <fieldset>
            <select name="driver_id" id="cars" required>
                <option value="">--Select A Driver--</option>
                @foreach ($driverList as $row)

                    <option value="{{$row->id}}">{{$row->name."-".$row->snk_no??''}}</option>

                @endforeach

            </select>
        </fieldset>
    </div> --}}

    {{-- <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">V_ID</h6>
      <fieldset>
        <input name="v_id" type="text" placeholder="" required="">
      </fieldset>
    </div> --}}

    {{-- <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Driver's Name</h6>
      <fieldset>
        <input name="drivers_name" type="text" placeholder="" required="">
      </fieldset>
    </div> --}}

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">2nd Seater's Name</h6>
      <fieldset>
        <input name="second_seater_name" type="text" placeholder="" required="">
      </fieldset>
    </div>

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Authority</h6>
      <fieldset>
      <select name="authority" id="type">
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
        <input name="destination" type="place" id="place" placeholder="" required="">
      </fieldset>
    </div>

    {{-- <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">KM Reading</h6>
      <fieldset>
        <input name="km_reading" type="distance" id="distance" placeholder="" required="">
      </fieldset>
    </div> --}}

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Start Time</h6>
      <fieldset>
      <input name="start_time" type="time" id="time" placeholder="when Out" required="">
    </fieldset>

    </div>

    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Probable End Time</h6>
      <fieldset>
      <input name="probable_end_time" type="time" id="time" placeholder="when In" required="">
    </fieldset>

    </div>

    {{-- <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Present Fuel</h6>
      <fieldset>
      <input name="fuel" type="litre" id="litre" placeholder="" required="">
    </fieldset>
    </div> --}}


    {{-- <div class="col-lg-6">
<h6 style="color:black;">Last Maintenance Date</h6>
    <input type="date" name="last_maintenance_date" value="date-two">
</div> --}}

<!--
    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Last Maintenace Date</h6>
    <div id="filterDate2">
          <div class="input-group date" data-date-format="dd/mm/yyyy">
            <input  name="date" id="date" type="date" class="form-control" placeholder="dd/mm/yyyy">
            <div class="input-group-addon" >
              <span class="glyphicon glyphicon-th"></span>
            </div>
          </div>
        </div>
    </div> -->


    <br>
    <div class="col-lg-6 col-sm-12">
    <h6 style="color:black;">Comments</h6>
      <fieldset>
        <textarea name="comment" rows="6" id="message" placeholder="" ></textarea>
      </fieldset>
    </div>
    <div class="col-lg-12">
      <fieldset>
        <button type="submit" id="form-submit" value="submit"  class="main-button-icon bg-success">Submit</button>
      </fieldset>
    </div>





                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
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
