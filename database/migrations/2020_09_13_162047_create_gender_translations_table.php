<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGenderTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gender_translations', function (Blueprint $table) {
            $table->id();
            $table->integer('gender_id')->unsigned()->onDelete('cascade');
            $table->string('name');
            $table->string('locale')->index();

            $table->unique(['gender_id', 'locale']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gender_translations');
    }
}
