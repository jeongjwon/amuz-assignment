<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MyPortfolio;


class PortfolioController extends Controller
{
    public function index()
    {
        $portfolios = MyPortfolio::all();
        return response()->json($portfolios);
    }
}
