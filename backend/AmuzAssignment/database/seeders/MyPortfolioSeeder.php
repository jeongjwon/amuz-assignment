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

        MyPortfolio::truncate();

        MyPortfolio::create([
            'title' => 'Anti Corona',
            'description' => 
            'player 가 virus를 잡아먹으면서 covid 를 물리치는 게임으로 대학 3학년 오픈소스 강좌를 수강하면 진행한 프로젝트이다. ',
            'stacks' => 'Java',
            'git' => 'https://github.com/jeongjwon/OSS_covid',
            'blog' => null,
            'deploy' => null,
            'date' => '2021.04 - 2021.05',
            'image_path' => 'http://127.0.0.1:8000/api/images/anti_corona.png',
            'roles' => '스테이지별 화면 구성,NPC 접촉시 기능 구현',
            'results' => 'NPC 접촉에 따른 PC의 모습을 구분하여 구현할 수 있었음,스테이지별로 NPC 의 난이도를 조절할 수 있었음',
        ]);
        MyPortfolio::create([
            'title' => 'Meecord',
            'description' => 
            '감정분석을 토대로한 비대면 소개팅 서비스다. 미코드의 특징은 비대면 1:1로 진행되는 미팅을 통해 화상과 음성으로 각각 표정인식과 음성인식을 통해 감정 분석으로 실시간 TIP을 제공한다. 실시간 TIP에는 랜덤 질문과 지난 대화록의 주요 감정 및 핵심 키워드, 실시간 상대방 의 감정 추이를 제공한다. 미팅 후에는 대화록과 감정 분석과 키워드 요약이 적용된 미팅 기록을 간단히 볼 수 있다.',
            'stacks' => 'JavaScript,HTML,CSS,Node.js,Firebase,Python,Flask',
            'git' => 'https://github.com/jeongjwon/meecord',
            'blog' => null,
            'deploy' => 'https://meecord-223cc.firebaseapp.com/',
            'date' => '2022.03 - 2022.06',
            'image_path' => 'http://127.0.0.1:8000/api/images/meecord.png',
            'roles' => '전체적인 웹 어플리케이션 디자인,실시간 채팅창,채팅 키워드 검색 기능',
            'results' => 'Firebase 를 통해 전체 화상 채팅 데이터를 관리할 수 있었음,음성 인식된 채팅에서 키워드를 검색하여 해당 키워드로 이동을 가능하게 하였음',
        ]);

        MyPortfolio::create([
            'title' => '가계부 어플리케이션',
            'description' => 'React 기초를 익히기 위해 개인적으로 진행한 가계부 토이 프로젝트이다. 기본적으로 수입, 지출 등의 내역 CRUD 기능과 연간 조회 기능이 있다.',
            'stacks' => 'React,JavaScript,HTML,CSS',
            'git' => 'https://github.com/jeongjwon/account-book',
            'blog' => null,
            'deploy' => 'https://jeongjwon.github.io/account-book/',
            'date' => '2022.10',
            'image_path' => 'http://127.0.0.1:8000/api/images/account.png',
            'roles' => '가계부 내역 CRUD,연간 조회 필터 기능',
            'results' => 'React 를 이용한 첫 토이 프로젝트로 컴포넌트의 전체적인 구조를 깨닫고 props와 state 에 대해 부모-자식 간 연결하여 사용할 수 있음을 배웠음,연간 버튼을 통해 연간별 내역 조회 기능이 미흡한 것이 아쉬움이 남음',
        ]);

        MyPortfolio::create([
            'title' => '러닝 기록 웹 어플리케이션 ',
            'description' => '꽤 오랜 취미생활로 러닝을 즐겨하고 있던 중, 스마트폰과 스마트워치의 나이키 런 클럽 이라는 어플리케이션의 연동으로 폰에는 자동적으로 달리기를 시작하고 종료함에 따라 저장이 된다. 스마트폰의 기록처럼 웹에도 기록을 해보고 싶다는 생각으로 이 프로젝트를 시작하게 되었다.',
            'stacks' => 'React,JavaScript,TypeScript,Styled-Components,localStorage,Redux',
            'git' => 'https://github.com/jeongjwon/my-running',
            'blog' => 'https://velog.io/@jeongjwon/Project-Run-Record',
            'deploy' => null,
            'date' => '2023.04',
            'image_path' => 'http://127.0.0.1:8000/api/images/my_running.png',
            'roles' => '기록 CRUD,date-fns 라이브러리를 사용한 캘린더 연동,Styled-component를 활용한 컴포넌트 디자인,redux 를 이용한 모달 전역관리',
            'results' => 'React 캘린더 라이브러리를 사용하여 용이하게 월별 요약을 할 수 있었음,JavaScript 에서 TypeScript 로 리팩토링을 진행하면서 undefined 의 오류를 줄일 수 있었음,localStroage 에서 Redux 로 리팩토링하면서 상태를 사용하고 코드 유지보수가 용이해짐',
        ]);

        MyPortfolio::create([
            'title' => 'StackOverFlow Clone',
            'description' => '부트캠프 프리 프로젝트로 4일간 6명(백엔드 3명, 프론트엔드 3명)이서 진행한 스택오버플로우 클론으로 게시물 CRUD 기능과 회원가입 OAuth 를 맡았다.',
            'stacks' => 'React,HTML,CSS,JavaScript,Styled-Components',
            'git' => 'https://github.com/codestates-seb/seb44_pre_029',
            'blog' => null,
            'deploy' => 'https://seb44-pre-029.netlify.app/',
            'date' => '2023.06',
            'image_path' => 'http://127.0.0.1:8000/api/images/stackoverflow_clone.png',
            'roles' => '게시물 CRUD,회원가입 Oauth,투표하기 기능',
            'results' => '구글 OAuth 기능을 구현하면서 클라이언트-서버-구글 서버의 Flow 흐름을 파악할 수 있었음,CRUD 기능을 복습해보고 기술을 익힐 수 있었음',
        ]);

        MyPortfolio::create([
            'title' => '후즈북',
            'description' => '부트캠프 메인 프로젝트에서 4주간 6명(백엔드 3명, 프론트엔드 3명)이서 기획 및 구축한 추천 기반 도서 큐레이션 서비스이다. 댓글 CRUD , Nested Routing, Pagination 등을 맡아 진행했다. 최종적으로 부트캠프에 참여했던 약 200명, 30개의 팀에서 투표를 하여 4등으로 마무리 짓게 되었다.',
            'stacks' => 'React,TypeScript,Redux-Toolkit,HTML,CSS,Styled-Components,TailWindCss',
            'git' => 'https://github.com/codestates-seb/seb44_main_004',
            'blog' => 'https://velog.io/@jeongjwon/Main-Project',
            'deploy' => 'http://whosebook-client.s3-website.ap-northeast-2.amazonaws.com/',
            'date' => '2023.06 - 2023.07',
            'image_path' => 'http://127.0.0.1:8000/api/images/whose_book.png',
            'roles' => '회원 관리 (마이페이지 회원 정보 조회, 수정),댓글 CRUD,좋아요 기능,구독하기 기능,Nested Routing,페이지네이션,책 도서 검색 API 사용',
            'results' => 'React-Paginate 라이브러리를 이용한 페이지네이션을 통해 뒤로가기 시 경로를 기억할 수 있기에 사용장 입장에서 편리함을 제공,댓글과 자신의 회원 정보를 Redux-Toolkit으로 전역관리 함으로써 새로고침없이 효율적으로 리소스를 처리할 수 있음,중첩 라우팅을 통해 중복된 컴포넌트의 렌더링되는 비용을 줄일 수 있음',
        ]);

        MyPortfolio::create([
            'title' => 'My Run Club',
            'description' => '기존 웹으로 진행했던 프로젝트에서 한 발자국 더 나아가 Flutter를 이용한 러닝 활동 일지 앱 어플리케이션이다. 나이키 런 클럽을 UI로 삼아 간단하게 러닝기록 CRUD 기능과 러닝 DB 를 Firebase 와 연동시켜 차트로 요약 기능을 진행했다. ',
            'stacks' => 'Flutter,Provider,Firebase,Github',
            'git' => 'https://github.com/jeongjwon/my_run_club/',
            'blog' =>'https://velog.io/@jeongjwon/Project-My-Run-Club#2-%EB%9F%AC%EB%8B%9D-%EA%B8%B0%EB%A1%9D-%EC%9A%94%EC%95%BD',
            'deploy' => null,
            'date' => '2023.11',
            'image_path' => 'http://127.0.0.1:8000/api/images/my_run_club.png',
            'roles' => '러닝 활동 CRUD,러닝 DB - Firebase 연동,러닝 요약',
            'results' => 'Provider 를 이용해 DB를 전역 상태 관리하였음,Tab Controller 를 이용해 주월년을 기준으로 요약할 수 있었음,BarChart 위젯을 이용해 요약을 차트 그림으로 표현할 수 있었음',
        ]);

    }
}
