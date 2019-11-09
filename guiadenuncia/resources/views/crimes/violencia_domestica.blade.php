@extends('layouts.app')
<style>
    .box{
        cursor: pointer;
    }
</style>
@section('content')
        <section id="call-to-action" class="wow fadeInUp">
            <div class="container">

                <div class="row q01">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">É um padrão de comportamento que envolve violência ou outro tipo de abuso por parte de uma pessoa contra outra num contexto doméstico, seja contra adultos, crianças ou idosos.</p>
                        <p class="cta-text">VOCÊ OU ALGUÉM DA SUA FAMÍLIA SOFREU ALGUM TIPO DE VIOLÊNCIA?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q01-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q01-btn-nao align-middle" href="{{URL::to('/guia/crime')}}">NÃO</a>
                    </div>
                </div>

                <div class="row q02" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">VOCÊ JÁ FOI ATÉ A DELEGACIA ANTES?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q02-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q02-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

                <div class="row q03" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">RESOLVEU O PROBLEMA?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q03-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q03-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

                <div class="row q04" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">FOI VIOLÊNCIA FÍSICA OU VERBAL?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q04-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q04-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

                <div class="row q05" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">FOI SEU COMPANHEIRO?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q05-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q05-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

                <div class="row q06" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">FOI SEU PAI, MÃE OU IRMÃO?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q06-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q06-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

                <div class="row q07" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">VOCÊ SOFRE AMEAÇAS?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q07-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q07-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

                <div class="row q08" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">VOCÊ ESTÁ SENDO PROIBIDO DE SAIR DE CASA?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q08-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q08-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

                <div class="row q09" style="display: none;">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Violência Doméstica</h3>
                        <p class="cta-text">TEM MEDO DE FAZER A DENÚNCIA?</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn q09-btn-sim align-middle" href="#">SIM</a>
                        <a class="cta-btn q09-btn-nao align-middle" href="#">NÃO</a>
                    </div>
                </div>

            </div>
        </section>
<script>
    $(document).ready(function() {
        $('.q01-btn-sim').click(function() {
            $('.q01').hide();
            $('.q02').show();
        });
        $('.q02-btn-sim').click(function() {
            $(this).closest('.row').hide();
            $('.q03').show();
        });
        $('.q02-btn-nao').click(function() {
            $(this).closest('.row').hide();
            $('.q04').show();
        });
        $('.q03-btn-sim').click(function() {
            $(this).closest('.row').hide();
            $.ajax({
                type: "post",
                url: '/contact/gravaconsulta',
                data: {
                    _token: "{{ csrf_token() }}",
                },
                success: function() {
                    window.location = '/crimes/agradecimento';
                }
            })
            // alert('agradeimento');
            // $('.q04').show(); //FORM AGRADECIMENTO e grava dados
        });
        $('.q03-btn-nao').click(function() {
            $(this).closest('.row').hide();
            $('.q04').show();
        });
        $('.q04-btn-sim').click(function() {
            $(this).closest('.row').hide();
            $('.q05').show();
        });
        $('.q04-btn-nao').click(function() {
            $(this).closest('.row').hide();
            $('.q07').show();
        });
        $('.q05-btn-sim').click(function() {
            $(this).closest('.row').hide();
            window.location = '/crimes/violencia_domestica_orientacao';
            // alert('encaminha delegacia');
            // $('.q05').show(); //dellegacia
        });
        $('.q05-btn-nao').click(function() {
            $(this).closest('.row').hide();
            $('.q06').show();
        });
        $('.q06-btn-sim').click(function() {
            $(this).closest('.row').hide();
            window.location = '/crimes/violencia_domestica_orientacao';
        });
        $('.q06-btn-nao').click(function() {
            $(this).closest('.row').hide();
            // alert('encaminha delegacia');
            window.location = '/crimes/violencia_domestica_orientacao';
        });
        $('.q07-btn-sim').click(function() {
            $(this).closest('.row').hide();
            $('.q08').show(); 
        });
        $('.q07-btn-nao').click(function() {
            $(this).closest('.row').hide();
            $('.q08').show(); 
        });
        $('.q08-btn-sim').click(function() {
            $(this).closest('.row').hide();
            window.location = '/contact/create';
        });
        $('.q08-btn-nao').click(function() {
            $(this).closest('.row').hide();
            $('.q05').show();
        });
        $('.q09-btn-sim').click(function() {
            $(this).closest('.row').hide();
            window.location = '/contact/create';
        });
        $('.q09-btn-nao').click(function() {
            $(this).closest('.row').hide();
            // alert('encaminha delegacia');
            window.location = '/crimes/violencia_domestica_orientacao';
        });
    });
</script>
@endsection