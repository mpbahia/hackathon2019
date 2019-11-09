<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->bigIncrements('id');
            // $table->engine = 'InnoDB';
            $table->string('tipo')->nullable();
            $table->string('nome')->nullable();
            $table->string('rua')->nullable();
            $table->string('bairro')->nullable();
            $table->string('cidade')->nullable();
            $table->string('telefone')->nullable();
            $table->string('email')->nullable();
            $table->text('relato')->nullable();
            $table->string('lat')->nullable();
            $table->string('lon')->nullable();
            $table->string('country')->nullable();
            $table->string('regionName')->nullable();
            $table->string('city')->nullable();
            $table->string('query')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.  
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('contacts');
    }
}
