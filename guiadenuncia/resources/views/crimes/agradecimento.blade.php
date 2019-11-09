@extends('layouts.app')
<style>

</style>
@section('content')
<section id="intro" class="wow fadeIn">
        <div class="intro-content">
            <h2>Obrigado por ter utilizado o nosso sistema. Nossa missão é ajudar você a solucionar seu problema.</h2>
        </div>
        <div id="intro-carousel" class="owl-carousel" >
            <div class="item" style="background-image: url({{asset('img/intro-carousel/1.jpg')}});"></div>
            <div class="item" style="background-image: url({{asset('img/intro-carousel/2.jpg')}});"></div>
            <div class="item" style="background-image: url({{asset('img/intro-carousel/3.jpg')}});"></div>
            <div class="item" style="background-image: url({{asset('img/intro-carousel/4.jpg')}});"></div>
            <div class="item" style="background-image: url({{asset('img/intro-carousel/5.jpg')}});"></div>
        </div>
        </section>
<script>
    $(document).ready(function() {
        
    });
</script>
@endsection