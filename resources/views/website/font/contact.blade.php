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
    <i class="fa fa-map-marker"></i>
    <h5>Office Address</h5>
    <p>Dar es Salaam, Tanzania P.o.Box 6230<br>
      
    </p>
    </div>
    </div>
    <div class="col-md-6 col-lg-3">
    <div class="contact-info">
    <i class="fa fa-phone"></i>
    <h5>Call Us</h5>
    <p>(+255) 753995084 <br>
        (+255) 754689775
    </p>
   
    </div>
    </div>
    <div class="col-md-6 col-lg-3">
    <div class="contact-info">
    <i class="fa fa-envelope"></i>
    <h5>Email Us</h5>
    <p>naret@naret.co.tz</p>
    <p>.
    </p>
    </div>
    </div>
    <div class="col-md-6 col-lg-3">
    <div class="contact-info">
    <i class="fa fa-clock-o"></i>
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
   <iframe src="https://www.google.com/maps/d/embed?mid=10l1XPbm8QFI9rDd6dB1emUHMfV0&hl=en&ehbc=2E312F" width="640" height="480"></iframe>
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
