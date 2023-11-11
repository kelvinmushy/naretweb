@extends('website.layouts.master')


@section('top')
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
                                <img src="{{ asset('assets/website/img/service/2.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/4.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">CARGO HANDLING</a>
                                </h3>
                                <p class="services-text">We can bulk cargo trimming services for our clients through a variety 
                                      of cost-effective procedures. The goal of trimming is to effectively distribute the
                                     cargo evenly on the vessel to enhance safety on the sea.</p>
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/service/1.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/2.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">CONTAINER AND CARGO LASHING AND UNLASHING</a>
                                </h3>
                                <p class="services-text">NARET COMPANY LIMITED is well equipped to handle the lashing of 
                                    the containers within a vessel. This process has become highly demanding and requires expertise and the application of appropriate technology to lash containers 
                                    effectively without posing risk to lives and properties.</p>
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/service/3.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/1.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">WATCHMAN SHIP</a>
                                </h3>
                                <p class="services-text">NARET COMPANY LIMITED can provide personnel for watch standing services 
                                    for vessels of varying sizes. Our personnel consist of engineering specialists that ensure 
                                    that the running machinery is operating in optimal condition and dedicated watch standers that work around the clock in shifts to guarantee that the vessel is
                                     on course and free from potential dangers in the waters and other navigating vessels</p>
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/service/hatch.png')}}" alt="">
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
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/service/separation.png')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/6.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">CARGO SEPARATION</a>
                                </h3>
                                <p class="services-text">Naret company limited has developed a reputation as 
                                       an innovation leader in cargo hold separation. We employ diverse
                                     types of technology for separation that is suitable for different types of cargo.</p>
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website//img/service/7.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/3.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">SHIP CHIPPING AND PAINTING</a>
                                </h3>
                                <p class="services-text">
                                    the chipping and painting of a ship serve more than simply beau tying the 
                                    facade; more importantly, it saves as a proactive maintenance process that helps
                                     circumvent expensive breakdowns and cost-intensive repair. it is an expensive breakdown to 
                                    choose the right painting view of getting the utmost benefit from painting a boat.
                                </p>
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/service/under.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/5.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">DIVING SERVICES</a>
                                </h3>
                                <p class="services-text">NARET COMPANY LIMITED also require underwater services as shown below:<br>
                                    • Underwater maintenance and repair<br>
                                    • Underwater of Fumigation and general cleanness <br>
                                    • Underwater construction and pipe lying support<br>
                                    • Underwater survey<br>
                                    • Underwater Selling dry bag Desiccant<br> 
                                    • Underwater selling Paper lining and Provide Services of lining .</p>
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
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
                                    and collects all shipping pieces of information with the highest level of attention. 
                                    Taking the sea pilot onboard, hailing in, looking through (if applicable), monitoring operations,
                                     the actual loading and unloading operations, and the amount of loading.</p>
                                <div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
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
@endsection
