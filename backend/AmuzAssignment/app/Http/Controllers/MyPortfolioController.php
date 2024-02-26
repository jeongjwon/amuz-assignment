<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyPortfolioController extends Controller
{

    public function index()
    {
        $portfolios = Portfolio::all();

        return response()->json($portfolios);
    }

    public function getImage($imageName){
    // 스토리지의 public 디렉토리에서 이미지를 가져옴
    $imagePath = Storage::disk('public')->path($imageName);
    
    // 이미지 파일을 응답으로 반환
    return response()->file($imagePath);
    }
}
