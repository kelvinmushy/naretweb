@extends('website.layouts.master')


@section('top')
@endsection
@section('content')
    <main class="main">
        <div class="site-breadcrumb" style="background: url(assets/website/img/container/1.jpg)">
            <div class="container">
            <h2 class="breadcrumb-title">About Us</h2>
            <ul class="breadcrumb-menu">
            <li><a href="/">Home</a></li>
            <li class="active">About Us</li>
            </ul>
            </div>
            </div>

        <div class="feature-area py-120">
            <div class="container">
                <div class="feature-wrapper">
                    <div class="row">
                        <div class="col-md-6 col-lg-6">
                            <div class="feature-single-item">
                                <div class="feature-icon">
                                    <i class="fa fa-eye"></i>
                                </div>
                                <div class="feature-text">
                                    <h3>OUR VISION</h3>
                                    <p> To be the best company
                                        that will prioritize customers with any services they
                                        need fast both online
                                        and physically.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                            <div class="feature-single-item">
                                <div class="feature-icon">
                                    <i class="fa fa-filter"></i>
                                </div>
                                <div class="feature-text">
                                    <h3>OUR MISSION</h3>
                                    <p>We store to offer our customers
                                        the lowest possible price the
                                        best available selection and
                                        all most convenience.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="about-area pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="about-left">
                            <div class="sticker">
                                <div class="sticker-wrapper">
                                    <div class="sticker-content">
                                        <h2>5 <span>+</span></h2>
                                        <p>Years Of Experience</p>
                                    </div>
                                </div>
                            </div>
                             <div class="about-img-box">
                             <div class="about-img-one">
                                    <img  style="height:450px" src="{{ asset('assets/website/img/container/2.jpg')}}" alt="">
                                </div>
                                <div class="about-img-two">
                                    <img  style="height:226px;width:206"src="{{ asset('assets/website/img/about/about4.jpg')}}" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-right">
                            <div class="site-header">
                                <span class="site-title-tagline">About Us</span>
                                <h2 class="site-title mb-10">The Top Leading Miscellaneous Port Services</h2>
                            </div>
                            <p class="about-text"><span><b>NARET COMPANY LIMITED</b></span> was established in 2017, under the company (cap 2022) with the objectives of providing the best services in Miscellaneous port services, surveyor, Fumigation, and general cleanness. The company is owned by
                                 Tanzania with good history, knowledge, experienced staff, and expertise in all operation.</p>
                            <div class="about-list-wrapper">
                                <ul class="about-list list-unstyled">
                                    <li>
                                        <div class="icon"><span class="fa fa-check"></span></div>
                                        <div class="text">
                                            <p><span><b>NARET COMPANY LIMITED</b></span> satisfies client freight forwarding customs,example
                                            <br>
                                            Dry bag clearance consultation services, and Tax and accounting services
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon"><span class="fa fa-check"></span></div>
                                        <div class="text">
                                            <p>It’s the only company you can rely on to do what you want</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon"><span class="fa fa-check"></span></div>
                                        <div class="text">
                                            <p>no matter how big or small your cargo is, we as <span><b>NARET COMPANY LIMITED</b></span> offers
                                                 comprehensive local, east, and African services for
                                              import and export. so no matter whether you require freight forwarding customs</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="about-solutions">
                                {{-- <div class="about-solutions-icon">
                                    <span class="fal fa-analytics"></span>
                                </div> --}}
                                <div class="about-solutions-text-box">
                                    <p class="about-solutions-tex">We Provides Quality Services
                                        <br> That Increase Your Success.
                                    </p>
                                </div>
                            </div>
                            {{--<a href="#" class="theme-btn">Learn More <i class="far fa-arrow-right"></i></a> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>



     


       
       
  @include('website.font.client')
    </main>
    @include('website.layouts.partial.footer')
@endsection
@section('bot')
@endsection
