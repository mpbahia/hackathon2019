@extends('layouts.app')
<style>
    .box{
        cursor: pointer;
    }
</style>
@section('content')
        <section id="services">
            <div class="container">
                    <div class="section-header">
                        <h2>PRECISAMOS SABER MAIS</h2>
                        <p>Qual tipo de crime aconteceu? Clique em uma das opções abaixo:</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                        <div class="box wow fadeInLeft" data-tipo="{{URL::to('crimes/violencia_domestica')}}">
                            <div class="icon"><img src="{{asset('img/icons/stop-violence.svg')}}" height="80" width="80"></div>
                            <h4 class="title">Violência doméstica</h4>
                            <p class="description">Você sofreu agressões físicas ou verbais de seu marido? Ele bateu nas crianças?</p>
                        </div>
                        </div>

                        <div class="col-lg-6">
                        <div class="box wow fadeInRight" data-tipo="{{URL::to('crimes/')}}">
                                <div class="icon"><img src="{{asset('img/icons/racism.svg')}}" height="80" width="80"></div>
                            <h4 class="title">Racismo</h4>
                            <p class="description">Aconteceu alguma forma de preconceito por causa de sua cor ou raça?</p>
                        </div>
                        </div>

                        <div class="col-lg-6">
                        <div class="box wow fadeInLeft" data-tipo="{{URL::to('crimes/')}}">
                            <div class="icon"><img src="{{asset('img/icons/homophobia.svg')}}" height="80" width="80"></div>
                            <h4 class="title">Homofobia</h4>
                            <p class="description">Por causa de sua orientação sexual você sofreu violêcia ou preconceito?</p>
                        </div>
                        </div>

                        <div class="col-lg-6">
                        <div class="box wow fadeInRight" data-tipo="{{URL::to('crimes/')}}">
                                <div class="icon"><img src="{{asset('img/icons/bribe.svg')}}" height="80" width="80"></div>
                            <h4 class="title">Corrupção</h4>
                            <p class="description">Algum político ou agente público tá roubando o seu dinheiro? Tá cobrando propina?</p>
                        </div>
                        </div>

                        <div class="col-lg-6">
                        <div class="box wow fadeInLeft" data-tipo="{{URL::to('crimes/')}}">
                            <div class="icon"><img src="{{asset('img/icons/anonimo.svg')}}" height="80" width="80"></div>
                            <h4 class="title">Crime virtual</h4>
                            <p class="description">Estão te chantageando, ameaçando compartilhar fotos íntimas?</p>
                        </div>
                        </div>

                        <div class="col-lg-6">
                        <div class="box wow fadeInRight" data-tipo="{{URL::to('crimes/')}}">
                                <div class="icon"><img src="{{asset('img/icons/saddog.svg')}}" height="80" width="80"></div>
                            <h4 class="title">Maus-tratos</h4>
                            <p class="description">Pode ser contra animais ou pessoas: idosos, deficientes...</p>
                        </div>
                        </div>

                        
                    </div>
                    <div class="section-header">
                        <h2>Não foi nenhum destes acima?</h2>
                        <label>Então digite abaixo qual crime ocorreu:</label>
                            <select id="staff_id" name="staff_id" class="form-control"></select>
                        </div>
                    </div>
            </div>
        </section>

<script>
    $(document).ready(function() {
        $('.box').click(function() {
            var tipo = $(this).data("tipo");
            window.location = (tipo);
        });
    });
</script>
@endsection