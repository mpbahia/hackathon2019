@extends('layouts.app')
<style>
    .box{
        cursor: pointer;
    }
</style>
@section('content')
            <section id="about" class="wow fadeInUp">
                <div class="container">
                <div class="row">
                    <div class="col-lg-6 about-img">
                    <img src="{{asset('img/solucaoviolenciadomestica.png')}}" alt="">
                    </div>
    
                    <div class="col-lg-6 content">
                    <h2>Encontramos a solução ideal para você</h2>
                    <h3>Vá até a delegacia especializada em atendimento à vítimas de violência doméstica. Aqui em Salvador ela está na Rua Padre Luiz Figueira, SN - Engenho Velho de Brotas.</h3>
    
                    <ul>
                        <li><i class="ion-android-checkmark-circle"></i> Leve seus documentos;</li>
                        <li><i class="ion-android-checkmark-circle"></i> Se possível, leve testemunhas do fato. Isso ajudará.</li>
                        <li><i class="ion-android-checkmark-circle"></i> Não demore de ir. Quanto mais rápido você for a delegacia, a possibilidade de ser detectada lesões, hematomas e outras marcas deixada pelo agressor
                        serão maiores.</li>
                    </ul>
    
                    </div>
                </div>
    
                </div>
            </section>
<script>
    $(document).ready(function() {
        $.ajax({
            type: "post",
            url: '/contact/gravaconsulta',
            data: {
                _token: "{{ csrf_token() }}",
            },
            success: function() {
                //console.log(wpe);
                // location.reload();
            }
        })
    });
</script>
@endsection