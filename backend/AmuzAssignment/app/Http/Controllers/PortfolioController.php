<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MyPortfolio;
use Illuminate\Support\Facades\Storage;

class PortfolioController extends Controller
{
    public function index()
    {
        $portfolios = MyPortfolio::all();
      
        //image_path 를 절대경로로 바꾸어 줌
        foreach ($portfolios as $portfolio) {
            $portfolio->image_path = asset('api/images/' . $portfolio->image_path);
        }
        
        return response()->json($portfolios);
    }

    public function getImage($imageName){
    // 스토리지의 public 디렉토리에서 이미지를 가져옴
    $imagePath = Storage::disk('public')->path($imageName);
    
    // 이미지 파일을 응답으로 반환
    return response()->file($imagePath);
    }
    public function search(Request $request){
        $searchTerm = $request->input('search');

        // 검색어가 포함된 포트폴리오를 검색합니다.
        $portfolios = MyPortfolio::where('title', 'like', "%{$searchTerm}%")
            ->orWhere('description', 'like', "%{$searchTerm}%")
            ->orWhere('stacks', 'like', "%{$searchTerm}%")
            ->orWhere('date', 'like', "%{$searchTerm}%")
            ->get();

        return response()->json($portfolios);
    }
}
