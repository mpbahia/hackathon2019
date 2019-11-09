@extends('layouts.app')
@section('inicial')
<section id="intro" class="wow fadeIn">
{{--     
        <div>
            @yield('inicial')
        </div> --}}
<div class="intro-content">
        <h2>Olá! <span>Nosso <u>objetivo</u> é</span><br>ajudar você a <u>solucionar</u> <br><span>seu problema.</span></h2>
        <div>
            {{-- <h2 style="font-size: 22px">Sabemos que chegou até aqui pois precisa de ajuda. <br>Vamos levar você para o lugar certo.</h2> --}}
        <a href="{{URL::to('/guia/crime')}}" class="btn-get-started scrollto">Começar</a>
        {{-- <a href="#portfolio" class="btn-projects scrollto">Quero agora</a> --}}
        </div>
    </div>
<div id="intro-carousel" class="owl-carousel" >
    <div class="item" style="background-image: url({{asset('img/intro-carousel/1.jpg')}});"></div>
    <div class="item" style="background-image: url({{asset('img/intro-carousel/2.jpg')}});"></div>
    <div class="item" style="background-image: url({{asset('img/intro-carousel/3.jpg')}});"></div>
    <div class="item" style="background-image: url({{asset('img/intro-carousel/4.jpg')}});"></div>
    <div class="item" style="background-image: url({{asset('img/intro-carousel/5.jpg')}});"></div>
</div>

</section>

@endsection