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
    public function run()
    {
        MyPortfolio::create([
            'title' => '미코드',
            // 'description' => '감정분석을 통한 비대면 소개팅 서비스',
            'description' => 
            '감정분석을 토대로한 비대면 소개팅 서비스다. 미코드의 특징은 비대면 1:1로 진행되는 미팅을 통해 화상과 음성으로 각각 표정인식과 음성인식을 통해 감정 분석으로 실시간 TIP을 제공한다. 실시간 TIP에는 랜덤 질문과 지난 대화록의 주요 감정 및 핵심 키워드, 실시간 상대방 의 감정 추이를 제공한다. 미팅 후에는 대화록과 감정 분석과 키워드 요약이 적용된 미팅 기록을 간단히 볼 수 있다.',
            'stacks' => 'JavaScript, HTML, CSS, Node.js, Firebase, Python, Flask',
            'link' => 'https://github.com/jeongjwon/meecord',
            'date' => '2022.03 - 2022.06',
            'image_path' => '경로/이미지1.jpg',
        ]);

        MyPortfolio::create([
            'title' => '가계부 어플리케이션',
            'description' => 'React 기초를 익히기 위해 개인적으로 진행한 가계부 토이 프로젝트',
            'stacks' => 'React , JavaScript, HTML, CSS',
            'link' => 'https://github.com/jeongjwon/account-book',
            'date' => '2022.10',
            'image_path' => '경로/이미지1.jpg',
        ]);

        MyPortfolio::create([
            'title' => '러닝 기록 웹 어플리케이션 ',
            'description' => '꽤 오랜 취미생활로 러닝을 즐겨하고 있던 중, 스마트폰과 스마트워치의 나이키 런 클럽 이라는 어플리케이션의 연동으로 폰에는 자동적으로 달리기를 시작하고 종료함에 따라 저장이 된다. 스마트폰의 기록처럼 웹에도 기록을 해보고 싶다는 생각으로 이 프로젝트를 시작하게 되었다.',
            'stacks' => 'React , JavaScript, TypeScript, Styled-Components, localStorage, Redux',
            'link' => 'https://github.com/jeongjwon/my-running',
            'date' => '2023.04',
            'image_path' => '경로/이미지1.jpg',
        ]);

        MyPortfolio::create([
            'title' => 'StackOverFlow Clone',
            'description' => '꽤 오랜 취미생활로 러닝을 즐겨하고 있던 중, 스마트폰과 스마트워치의 나이키 런 클럽 이라는 어플리케이션의 연동으로 폰에는 자동적으로 달리기를 시작하고 종료함에 따라 저장이 된다. 스마트폰의 기록처럼 웹에도 기록을 해보고 싶다는 생각으로 이 프로젝트를 시작하게 되었다.',
            'stacks' => 'React, HTML, CSS, JavaScript, Styled-Components',
            'link' => 'https://github.com/codestates-seb/seb44_pre_029',
            'date' => '2023.06',
            'image_path' => '경로/이미지1.jpg',
        ]);

        MyPortfolio::create([
            'title' => '후즈북',
            'description' => '추천 기반 도서 큐레이션 서비스',
            'stacks' => 'React, TypeScript, Redux-Toolkit, HTML, CSS, Styled-Components, TailWindCss',
            'link' => 'https://github.com/codestates-seb/seb44_main_004',
            'date' => '2023.06 - 2023.07',
            'image_path' => '경로/이미지1.jpg',
        ]);

        MyPortfolio::create([
            'title' => 'My Run Club',
            'description' => '러닝 활동 일지 앱 어플리케이션',
            'stacks' => 'Flutter, Provider, Firebase, Github',
            'link' => 'https://github.com/jeongjwon/my_run_club/',
            'date' => '2023.11',
            'image_path' => '경로/이미지1.jpg',
        ]);

    }
}
