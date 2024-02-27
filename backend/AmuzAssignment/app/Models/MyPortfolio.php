<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MyPortfolio extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'title',
        'description',
        'stacks',
        'date',
        'image_path',
        'git',
        'blog',
        'deploy',
        'roles',
        'results',
    ];
}
