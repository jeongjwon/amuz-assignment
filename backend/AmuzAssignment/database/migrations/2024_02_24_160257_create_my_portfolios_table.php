<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\MyPortfolio;

class MyPortfolioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function up(): void
    {
       
        Schema::create('my_portfolios', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('title');
            $table->text('description');
            $table->text('stacks');
            $table->text('link');
            $table->string('date');
            $table->string('image_path');
        });
        
    }
    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('my_portfolios');
    }
}
