<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStaticPagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staticpages', function (Blueprint $table) {
            $table->id();
            $table->integer('users_id')->nullable();
            $table->string('title', 200)->nullable();
            $table->string('desccode', 4000)->nullable();
            $table->string('file', 100)->nullable();
            $table->integer('active')->nullable();
            $table->integer('parentid')->nullable();
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
        Schema::dropIfExists('staticpages');
    }
}
