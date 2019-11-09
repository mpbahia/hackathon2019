<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CrimesController extends Controller
{
    public function agradecimento(Request $request){
        return view ('crimes.agradecimento');
    }
    public function violencia_domestica(Request $request){
        return view ('crimes.violencia_domestica');
    }
    public function violencia_domestica_orientacao(Request $request){
        return view ('orientacao.violencia_domestica');
    }
}
