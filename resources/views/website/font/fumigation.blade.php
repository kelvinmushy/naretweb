@extends('website.layouts.master')


@section('top')
@endsection
@section('content')
    <main class="main">

    
        <div class="site-breadcrumb" style="background: url(assets/website/img/slider/slider.jpg)">
            <div class="container">
            <h2 class="breadcrumb-title">Fumigation Services</h2>
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
                                <img src="{{ asset('assets/website/img/fumigation/office.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/4.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Cleaning of Offices and households</a>
                                </h3>
                                <p class="services-text">By utilizing the skills and knowledge of our professionals,
                                     we are engaged in providing high quality Office Cleaning Service to our clients. 
                                     Premium quality materials and cutting-edge techniques are utilized by our
                                     skilful professionals by rendering the provided cleaning services.</p>
                                  {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/fumigation/consultanting.png')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/2.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Fumigation and consultancy services</a>
                                </h3>
                                <p class="services-text">We offer fumigation consulting.
                                     More than five years in the industry, fumigation control organizations in
                                       Tanzania helping establishments to strive to stay ahead of pest control needs and 
                                       respond quickly if an issue does arise as well
                                      as helping them maintain a clean and pleasant establishment at all times.</p>
                                  {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img style="height:250px;"src="{{ asset('assets/website/img/fumigation/container.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/1.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Empty Container Fumigation Services</a>
                                </h3>
                                <p class="services-text">
                                    We offer Empty Container Fumigation, Fumigation for wooden packages,
                                     loaded containers etc with proper Fumigation treatment through Government Approved Fumigation Agencies.

                                      The trained professionals are instrumental in delivering these services effectively.
                                    
                                </p>
                                  {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="services-item">
                            <div class="services-img">
                                <img style="height:370px;" src="{{ asset('assets/website/img/fumigation/warehouse.jpg')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/5.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Warehouse fumigation<br>
                                        /Inspection of Warehouse</a>
                                </h3>
                                <p class="services-text">The aim of fumigation in warehouses is foremost to protect transit goods stored both long-term and short-term against various insect infections.

                                    Goods are covered with a gas-impermeable plastic sheet,and the injected toxic gas destroys various pests in all stages of development.
                                    </p>
                                  {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
                            </div>
                        </div>
                    </div>
                  
                    <div class="col-md-6 col-lg-6">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website//img/fumigation/timber.png')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/5.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Timber Treatment</a>
                                </h3>
                                <p class="services-text">
                                    The durability of many commercial softwood timber species 
                                    can be improved with the application 
                                    of a wood preservative applied by an industrial process.
                                    The process involves a kilning process to dry the timber before 
                                    it is loaded into a high pressure treatment plant (autoclave)
                                     where the preservative is forced into the timber cells under vacuum.
                                </p>
                                  {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/fumigation/food.png')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/5.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Food process<br>
                                        machine fumigation</a>
                                </h3>
                                <p class="services-text">
                                    Pests are naturally drawn to food manufacturing and processing plants.
                                     Common pests in and around these facilities include rodents, flies, cockroaches,
                                      beetles, spiders, and birds. They can compromise the cleanliness of an otherwise 
                                      sanitary facility because they can transmit disease and track bacteria—including 
                                    Listeria and Salmonella—from raw ingredient areas to ready-to-eat areas.
                                </p>
                                  {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/fumigation/rat.png')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/6.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Rodent Control</a>
                                </h3>
                                <p class="services-text">Rats and mice are not only a nuisance but
                                     can also cause property damage and transmit diseases. You’ll
                                      know they’ve arrived if you see rodent droppings near a food
                                       source or shredded fabric or paper. To permanently keep rats and 
                                     mice out of your home or business,
                                      you will need to prevent access by sealing all possible entry points.
                                       It is equally important to eliminate rodent attractions such as food and water by keeping food 
                                    in tightly sealed containers.</p>
                                    {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="services-item">
                            <div class="services-img">
                                <img src="{{ asset('assets/website/img/fumigation/mill.png')}}" alt="">
                            </div>
                            <div class="services-icon">
                                <img src="{{ asset('assets/website/img/service/icon-2/6.png')}}" alt="">
                            </div>
                            <div class="services-content">
                                <h3 class="services-title">
                                    <a href="#">Mills fumigation</a>
                                </h3>
                                <p class="services-text">The entire mill should be fumigated at least twice a year. All machines,
                                     conveyors, elevators etc., must be opened and thoroughly cleaned out. 
                                     They are left open during the period of the fumigation. 

                                    For this type of space fumigation, phosphine sachets are recommended; 
                                    these are put in cardboard trays which are strategically placed throughout the building.
                                     Sachets may also be hung in empty bins or other areas of the building.</p>
                                {{--<div class="services-arrow">
                                    <a href="#" class="theme-btn"><span class="far fa-arrow-right"></span></a>
                                </div>--}}
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
