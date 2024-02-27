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
        //
        Schema::table('my_portfolios', function (Blueprint $table) {
            // 'roles', 'results' 속성 추가
            $table->text('roles')->nullable();
            $table->text('results')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        $table->dropColumn('roles');
        $table->dropColumn('results');
    }
};
