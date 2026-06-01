<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tb_usuario', function (Blueprint $table) {
            $table->id('id_usuario');
            $table->string('nm_usuario', 60);
            $table->string('email')->unique();
            $table->boolean('fl_admin')->default(false);
            $table->boolean('fl_ativo')->default(true);
            $table->timestamp('email_verified_at')->nullable();
            $table->string('senha');
            $table->rememberToken();
            $table->timestamps();
        });

        Schema::create('tb_cliente', function (Blueprint $table) {
            $table->unsignedBigInteger('id_usuario')->primary();
            $table->foreign('id_usuario')->references('id_usuario')->on('tb_usuario')->onDelete('cascade');
        });

        Schema::create('tb_prestador', function (Blueprint $table) {
            $table->unsignedBigInteger('id_usuario')->primary();
            $table->foreign('id_usuario')->references('id_usuario')->on('tb_usuario')->onDelete('cascade');
        });

        Schema::create('password_reset_tokens', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('token');
            $table->timestamp('created_at')->nullable();
        });

        Schema::create('sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->foreignId('user_id')->nullable()->index();
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity')->index();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tb_prestador');
        Schema::dropIfExists('tb_cliente');
        Schema::dropIfExists('tb_usuario');
        Schema::dropIfExists('password_reset_tokens');
        Schema::dropIfExists('sessions');
    }
};
