<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('games', function (Blueprint $table) {
            $table->id();
            $table->string('local');
            $table->string('visitor');
            $table->dateTime('datetime');
            $table->integer('glocal')->nullable();
            $table->integer('gvisitante')->nullable();
            $table->enum('status',['Programado','Iniciado','Terminado']);
            $table->string('winner')->nullable();
            $table->unsignedBigInteger('place_id');
            $table->unsignedBigInteger('tournament_id');
            $table->foreign('place_id')->references('id')->on('places')->onDelete('cascade');
            $table->foreign('tournament_id')->references('id')->on('tournaments')->onDelete('cascade');
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
        Schema::dropIfExists('games');
    }
};
