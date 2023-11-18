@extends('website.layouts.master')


@section('top')
<style>
#more {display: none;}
#more1 {display: none;}

#more2 {display: none;}
#more3 {display: none;}

#more4 {display: none;}
#more5 {display: none;}
#more6 {display: none;}
</style>

@endsection
@section('content')
    <main class="main">

    
        <div class="site-breadcrumb" style="background: url(assets/website/img/slider/slider.jpg)">
            <div class="container">
            <h2 class="breadcrumb-title">Port Services</h2>
            <ul class="breadcrumb-menu">
            <li><a href="/">Home</a></li>
            <li class="active">Services</li>
            </ul>
            </div>
            </div>

        <div class="services-area mt-60 py-120">
            <div class="container">
                  <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img  style="height:300px" src="{{ asset('assets/website/img/service/2.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/4.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title" >
                                    <a href="#">CARGO HANDLING</a>
                                </h3>

                                <p class="services-text">

                                We can bulk cargo trimming services for our clients through a variety 
                                of cost-effective procedures.<span id="dots">...</span><span id="more"> The goal of trimming is to effectively distribute the
                                 cargo evenly on the vessel to enhance safety on the sea.</span></p>  
                                     
                                 </p>
                                <div class="services-arrow">
                                    <button onclick="myFunction()" id="myBtn" class="theme-btn"><span class="far fa-arrow-right"></span>
                                    Read more
                                    </button>
                                </div> 
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img style="height:300px" src="{{ asset('assets/website/img/service/container.jpeg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/2.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">CONTAINER AND CARGO LASHING AND UNLASHING</a>
                                </h3>
                                <p class="services-text">NARET COMPANY LIMITED is well equipped to handle the lashing of 
                                    the containers within a vessel.<span id="dots1">...</span><span id="more1"> This process has become highly demanding and requires expertise and the application of appropriate technology to lash containers 
                                    effectively without posing risk to lives and properties.</span></p> 
                                <div class="services-arrow">
                                    <button onclick="myFunction1()" id="myBtn1" class="theme-btn"><span class="far fa-arrow-right"></span>
                                    Read more
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img style="height:300px" src="{{ asset('assets/website/img/service/watching.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/1.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">WATCHMAN SHIP</a>
                                </h3>
                                <p class="services-text">NARET COMPANY LIMITED can provide personnel for watch standing services 
                                    for vessels of varying sizes.<span id="dots3">...</span><span id="more3"> Our personnel consist of engineering specialists that ensure 
                                    that the running machinery is operating in optimal condition and dedicated watch standers that work around the clock in shifts to guarantee that the vessel is
                                     on course and free from potential dangers in the waters and other navigating vessels</span></p>
                                <div class="services-arrow">
                                    <button onclick="myFunction3()" id="myBtn3" class="theme-btn"><span class="far fa-arrow-right"></span>
                                    Read more
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img style ="height:300px;"src="{{ asset('assets/website/img/service/hatch.jpeg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/5.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">HATCH SWEEPING AND CLEANING</a>
                                </h3>
                                <p class="services-text">Hatch sweeping and cleaning is an integral part of the business.
                                     Naret company limited has agog understanding of the intricate needs of ship owners.</p>
                                {{-- <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div> --}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img style="height:300px"  src="{{ asset('assets/website/img/service/cargoseparation.jpeg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/6.png')}}" alt="">
                            </div>
                            <div class="services-content" >
                                <h3 class="services-title">
                                    <a href="#">CARGO SEPARATION</a>
                                </h3>
                                <p class="services-text">Naret company limited has developed a reputation as 
                                       an innovation leader in cargo hold separation. We employ diverse
                                     types of technology for separation that is suitable for different types of cargo.</p>
                                {{-- <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div> --}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img  style="height:300px" src="{{ asset('assets/website//img/service/7.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/3.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">SHIP CHIPPING AND PAINTING</a>
                                </h3>
                                <p class="services-text">
                                    the chipping and painting of a ship serve more than simply beau tying 
                                     <span id="dots4">...</span><span id="more4">
                                    the 
                                    facade; more importantly, it saves as a proactive maintenance process that helps
                                    
                                     circumvent expensive breakdowns and cost-intensive repair.  
                                     it is an expensive breakdown to 
                                    choose the right painting view of getting the utmost benefit from painting a boat.
                                 </span></p>
                                <div class="services-arrow">
                                      <button onclick="myFunction4()" id="myBtn4" class="theme-btn"><span class="far fa-arrow-right"></span>
                                    Read more
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img style="height:300px" src="{{ asset('assets/website/img/service/diving.jpeg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/5.png')}}" alt="">
                            </div>
                            <div class="services-content" >
                                <h3 class="services-title">
                                    <a href="#">DIVING SERVICES</a>
                                </h3>
                                <p class="services-text">NARET COMPANY LIMITED also require underwater services as shown below:<br>
                                    • Underwater maintenance and repair<br>
                                     <span id="dots5">...</span><span id="more5">
                                    • Underwater of Fumigation and general cleanness <br>
                                    • Underwater construction and pipe lying support<br>
                                    • Underwater survey<br>
                                    • Underwater Selling dry bag Desiccant<br> 
                                    • Underwater selling Paper lining and Provide Services of lining .</span></p>
                                <div class="services-arrow">
                                     <button onclick="myFunction5()" id="myBtn5" class="theme-btn"><span class="far fa-arrow-right"></span>
                                    Read more
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/service/2.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/6.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">STATEMENT OF FACTS</a>
                                </h3>
                                <p class="services-text">NARET COMPANY LIMITED also deals with loading and unloading 
                                    and collects all shipping pieces of 
                                    
                                    information with the highest level of attention. 
                                    Taking the sea pilot onboard, hailing in, 
                                 
                                    looking through (if applicable), monitoring operations,
                                         <span id="dots6">...</span><span id="more6">
                                     the actual loading and unloading operations, and the amount of loading.</span></p>
                                <div class="services-arrow">
                                     <button onclick="myFunction6()" id="myBtn6" class="theme-btn"><span class="far fa-arrow-right"></span>
                                    Read more
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/service/homeclean.jpeg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/3.png')}}" alt="">
                            </div>
                            <div class="services-content" >
                                <h3 class="services-title">
                                    <a href="#">CLEANING SERVICES</a>
                                </h3>
                                <p class="services-text">
                                    Furthermore, Naret company limited deal with cleaning services,
                                     we give our clients a fair and
                                          <span id="dots7">...</span><span id="more7">
                                      competitive estimate with better prices.
                                      We focus to provide professional 
                                    cleaning services for both residential and commercial clients.</span>
                                </p>
                                <div class="services-arrow">
                                    <button onclick="myFunction7()" id="myBtn7" class="theme-btn"><span class="far fa-arrow-right"></span>
                                    Read more
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            </div>
        </div>


     

       


       



    </main>
    @include('website.layouts.partial.footer')
@endsection
@section('bot')


<script>
function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}

function myFunction2() {
  var dots = document.getElementById("dots1");
  var moreText = document.getElementById("more1");
  var btnText = document.getElementById("myBtn1");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}
function myFunction3() {
  var dots = document.getElementById("dots3");
  var moreText = document.getElementById("more3");
  var btnText = document.getElementById("myBtn3");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}

function myFunction4() {
  var dots = document.getElementById("dots4");
  var moreText = document.getElementById("more4");
  var btnText = document.getElementById("myBtn4");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}

function myFunction5() {
  var dots = document.getElementById("dots5");
  var moreText = document.getElementById("more5");
  var btnText = document.getElementById("myBtn5");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}

function myFunction6() {
  var dots = document.getElementById("dots6");
  var moreText = document.getElementById("more6");
  var btnText = document.getElementById("myBtn6");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}

function myFunction7() {
  var dots = document.getElementById("dots7");
  var moreText = document.getElementById("more7");
  var btnText = document.getElementById("myBtn7");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}
</script>
@endsection
