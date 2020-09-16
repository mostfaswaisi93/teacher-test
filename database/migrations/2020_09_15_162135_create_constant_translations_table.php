<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateConstantTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('constant_translations', function (Blueprint $table) {
            $table->id();
            $table->integer('constant_id')->unsigned()->onDelete('cascade');
            $table->string('name');
            $table->string('locale')->index();

            $table->unique(['constant_id', 'locale']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('constant_translations');
    }
}
