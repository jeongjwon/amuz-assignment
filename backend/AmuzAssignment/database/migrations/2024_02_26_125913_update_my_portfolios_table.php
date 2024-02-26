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
        Schema::table('my_portfolios', function (Blueprint $table) {
            // 'link' 속성 제거
            $table->dropColumn('link');

            // 'git', 'blog', 'deploy' 속성 추가
            $table->string('git')->nullable();
            $table->string('blog')->nullable();
            $table->string('deploy')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        $table->dropColumn('link');

        $table->string('git')->nullable();
        $table->string('blog')->nullable();
        $table->string('deploy')->nullable();
    }
};
