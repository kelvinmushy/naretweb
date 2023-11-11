@extends('website.layouts.master')


@section('top')
@endsection
@section('content')
<main class="main">

    <div class="site-breadcrumb" style="background: url(assets/website/img/slider/slider.jpg)">
    <div class="container">
    <h2 class="breadcrumb-title">Contact Us</h2>
    <ul class="breadcrumb-menu">
    <li><a href="/">Home</a></li>
    <li class="active">Contact Us</li>
    </ul>
    </div>
    </div>
    
    
    <div class="contact-area py-120">
    <div class="container">
    <div class="contact-content">
    <div class="row">
    <div class="col-md-6 col-lg-3">
    <div class="contact-info">
    <i class="flaticon-location"></i>
    <h5>Office Address</h5>
    <p>Dar es Salaam, Tanzania P.o.Box 6230<br>
      
    </p>
    </div>
    </div>
    <div class="col-md-6 col-lg-3">
    <div class="contact-info">
    <i class="flaticon-phone-call"></i>
    <h5>Call Us</h5>
    <p>(+255) 753995084 <br>
        (+255) 754689775
    </p>
   
    </div>
    </div>
    <div class="col-md-6 col-lg-3">
    <div class="contact-info">
    <i class="flaticon-mail-inbox-app"></i>
    <h5>Email Us</h5>
    <p>naret@naret.co.tz</p>
    <p>.
    </p>
    </div>
    </div>
    <div class="col-md-6 col-lg-3">
    <div class="contact-info">
    <i class="flaticon-alarm-clock"></i>
    <h5>Office Open</h5>
    <p>Sat - Fri (8AM - 05PM)</p>
    <p>.
    </p>
    </div>
    </div>
    </div>
    </div>
    <div class="contact-wrapper">
    <div class="row">
    <div class="col-md-6">
    <div class="contact-map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d96708.34194156103!2d-74.03927096447748!3d40.759040329405195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4a01c8df6fb3cb8!2sSolomon%20R.%20Guggenheim%20Museum!5e0!3m2!1sen!2sbd!4v1619410634508!5m2!1sen!2s" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
    </div>
    <div class="col-md-6 align-self-center">
    <div class="contact-form">
    <div class="contact-form-header">
    <h2>Get In Touch</h2>
    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </p>
    </div>
    <form method="post" action="/techox/assets/php/contact.php" id="contact-form">
    <div class="row">
    <div class="col-md-6">
    <div class="form-group">
    <input type="text" class="form-control" name="name" placeholder="Your Name" required>
    </div>
    </div>
    <div class="col-md-6">
    <div class="form-group">
    <input type="email" class="form-control" name="email" placeholder="Your Email" required>
    </div>
    </div>
    </div>
    <div class="form-group">
    <input type="text" class="form-control" name="subject" placeholder="Your Subject" required>
    </div>
    <div class="form-group">
    <textarea name="message" cols="30" rows="5" class="form-control" placeholder="Write Your Message"></textarea>
    </div>
    <button type="submit" class="contact-btn"> <i class="far fa-paper-plane"></i> Send Message</button>
    <div class="col-md-12 mt-3">
    <div class="form-messege text-success"></div>
    </div>
    </form>
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
