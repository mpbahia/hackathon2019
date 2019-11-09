@extends('layouts.app')
@section('content')
    <section id="contact" class="wow fadeInUp">
        <div class="container">
        <div class="section-header">
            <h2>FALE COM A GENTE</h2>
            <p>Vamos fazer de tudo para ajudar a solucionar seu problema. Preencha o formulário a seguir:</p>
        </div>

        <div class="container">
        <div class="form">
            <form id="formToSubmit" autocomplete="off" method="POST" class="contactForm" action="{{url('contact')}}">
                    @csrf   
            <div class="form-row">
                <div class="form-group col-md-6">
                <input type="text" name="nome" class="form-control" id="nome" placeholder="Nome" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
                </div>
                <div class="form-group col-md-6">
                    <input type="text" name="rua" class="form-control" id="rua" placeholder="Rua" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                <input type="text" name="bairro" class="form-control" id="bairro" placeholder="Bairro" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" name="cidade" class="form-control" id="cidade" placeholder="Cidade" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" name="telefone" class="form-control" id="telefone" placeholder="Telefone com ddd" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
                </div>
            </div>
            <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
                </div>
            <div class="form-group">
                <textarea class="form-control" name="relato" rows="5" data-rule="required" data-msg="Escreva o que está acontecendo" placeholder="Escreva o que está acontecendo"></textarea>
                <div class="validation"></div>
            </div>
            <div class="text-center"><button type="submit">Enviar</button></div>
            </form>
        </div>

        </div>
    </section>
<script>
    $(document).ready(function() {

        
    });
</script>
@endsection