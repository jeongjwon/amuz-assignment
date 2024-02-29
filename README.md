# Portfolio Application

일주일 간 Laravel 과 Flutter 로 진행한 포트폴리오 앱입니다. 

</br>
</br>

## Simulation
<img src="https://github.com/jeongjwon/amuz-assignment/assets/76391160/ce631814-7bb7-4446-979e-1a08ef542f28.gif" width="200" />

</br>
</br>

## Screenshots

|Home|About|Project|Search|
|:--:|:--:|:--:|:--:|
|<img src="https://github.com/jeongjwon/amuz-assignment/assets/76391160/30d13809-19e4-4c8c-a887-400942e764f7" width="200" />|<img src="https://github.com/jeongjwon/amuz-assignment/assets/76391160/ef180dc9-37df-4b62-a9cd-864b4a6efccc" width="200"/>|<img src="https://github.com/jeongjwon/amuz-assignment/assets/76391160/6c48046d-e720-412b-bffd-d23e68cdc570" width="200" /><img src="https://github.com/jeongjwon/amuz-assignment/assets/76391160/6b29d823-79b6-4abf-b0a8-0e2b68ee40d5" width="200" />|<img src="https://github.com/jeongjwon/amuz-assignment/assets/76391160/a6cd3aba-4d5b-4aae-89d9-7a868657ea7f" width="200" /><img src="https://github.com/jeongjwon/amuz-assignment/assets/76391160/d373fe14-b8b0-4952-8b0e-61dbaa830127" width="200"/>|


</br>
</br>


## Techonologies and Packages USed
- font_awesome_flutter
- http
- url_launcher
- lutter_dotenv

</br>
</br>

## Getting Started
1. 저장소를 클론해주세요.
2. backend 와 frontend 로 나누어져있습니다.
   
   ```backend/AmuzAssignment```
   
   ```frontend/amuz_assignment```
   
   2-1. backend - 백엔드 서버를 켜주세요.
   
   ```cd backend/AmuzAssignment```

    ```php artisan serve```
   
   2-2. frontend - Depndencies 를 설치해주시고, 어플리케이션을 작동시켜주세요.
   
    ```flutter pub get```
   
   ```flutter run```

</br>

``` 
🚨 혹시나 flutter run 이 안되신다면?
frontend/amuz_assignment 폴더 내 lib > services >portfolio_service.dart  파일에서

getPortfolios 메서드와 searchPortfolio 메서드 내의 

String baseUrl = dotenv.get("PROJECT_URL"); 를 주석처리하시고,
다음 줄인,
String baseUrl = 'http://127.0.0.1:8000'; 에서 주소를 IP주소로 변경시켜 시도해주시면 됩니다.
```

</br>
</br>

## Usage Guide
- **Home** : 어플케이션의 첫 화면으로 이모지 프로필과 간략한 소개를 나타냅니다.
- **About** : 저에 대한 이력(프로필, 기술스택, 교육, 자격증) 등 을 나타냅니다.
- **Project** : 개발 경험에 있어서 쌓아온 프로젝트들을 나열하였습니다.
- **Search** : 검색어를 입력하여 포함된 프로젝트들을 검색할 수 있도록 나타냅니다.
- **Detail** : Project 나 Search 화면에서 나타난 프로젝트들 중 하나를 클릭하면 한 프로젝트의 상세화면을 나타냅니다.


</br>
</br>
