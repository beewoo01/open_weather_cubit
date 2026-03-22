# 🌦️ OpenWeather Cubit - Weather App

이 프로젝트는 **Udemy 강의**를 통해 학습한 **Flutter + Cubit** 기반의 날씨 검색 애플리케이션입니다. OpenWeather API를 활용하여 실시간 날씨 데이터를 가져오며, 상태 관리에 따른 동적 테마 변경 기능을 구현하는 데 중점을 두었습니다.

## ✨ 주요 기능 (Key Features)

* **도시별 날씨 검색:** 도시 이름을 입력하여 해당 지역의 현재 날씨와 온도를 실시간으로 확인합니다.
* **단위 변환 (Settings):** 설정 화면에서 섭씨(Celsius)와 화씨(Fahrenheit) 단위를 자유롭게 전환할 수 있습니다.
* **동적 테마 변경 (Dynamic Themeing):** Cubit을 활용하여 온도에 따라 앱의 테마가 자동으로 변경됩니다.
    * ☀️ **20°C 초과:** Light Theme (밝은 모드)
    * 🌙 **20°C 이하:** Dark Theme (어두운 모드)
* **에러 핸들링:** 잘못된 도시 이름 입력이나 네트워크 오류 발생 시 사용자에게 적절한 에러 메시지를 제공합니다.

## 🛠 사용 기술 (Tech Stack)

* **Language:** Dart
* **Framework:** Flutter
* **State Management:** `flutter_bloc` (Cubit)
* **API:** [OpenWeather API](https://openweathermap.org/) (Geocoding API, Weather API)
* **Packages:** `http`, `equatable`

## 🏗 핵심 학습 내용 (Learning Points)

### 1. Cubit 간의 통신 및 의존성 관리
여러 개의 Cubit(`WeatherCubit`, `ThemeCubit`, `SettingsCubit`)을 효과적으로 관리하고, 특히 `WeatherCubit`의 상태(온도) 변화를 `ThemeCubit`이 감지하여 화면 테마를 즉각적으로 바꾸는 로직을 학습했습니다.

### 2. API 데이터 파싱 및 가공
Geocoding API로 도시의 위도/경도를 먼저 구한 뒤, 해당 좌표로 날씨 정보를 가져오는 2단계 API 호출 프로세스를 구현했습니다.

### 3. 반응형 UI 구성
설정값(섭씨/화씨)에 따라 UI 상의 온도 표기 형식이 실시간으로 반영되도록 `BlocBuilder`와 `BlocListener`를 적절히 활용했습니다.
