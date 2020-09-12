<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGradeTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('grade_translations', function (Blueprint $table) {
            $table->id();
            $table->integer('grade_id')->unsigned()->onDelete('cascade');
            $table->string('name');
            $table->string('locale')->index();

            $table->unique(['grade_id', 'locale']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('grade_translations');
    }
}
