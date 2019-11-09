<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;

class ContactController extends Controller
{
    public function create(Request $request){
        return view('contact.contactform');
        // echo "create";
    }
    public function store(Request $request){
        $response = file_get_contents('http://ip-api.com/json/');
        $geo = json_decode($response);
        // dd($obj);
        $contact = new Contact ();
        $contact->tipo = "Violência Doméstica";
        $contact->nome = $request->input('nome'); 
        $contact->rua = $request->input('rua'); 
        $contact->bairro = $request->input('bairro'); 
        $contact->cidade = $request->input('cidade'); 
        $contact->telefone = $request->input('telefone'); 
        $contact->email = $request->input('email'); 
        $contact->relato = $request->input('relato'); 
        $contact->lat = $geo->lat;
        $contact->lon = $geo->lon; 
        $contact->country = $geo->country; 
        $contact->regionName = $geo->regionName; 
        $contact->city = $geo->city; 
        $contact->query = $geo->query; 
        $contact->save();
        return redirect('/crimes/agradecimento');

    }
    public function gravaconsulta (Request $request){
        $response = file_get_contents('http://ip-api.com/json/');
        $geo = json_decode($response);
        // dd($obj);
        $contact = new Contact ();
        $contact->tipo = "Violência Doméstica";
        $contact->lat = $geo->lat;
        $contact->lon = $geo->lon; 
        $contact->country = $geo->country; 
        $contact->regionName = $geo->regionName; 
        $contact->city = $geo->city; 
        $contact->query = $geo->query; 
        $contact->save();
        // return redirect('/guia');

    }
}
