# 🏨 신라호텔 웹 리뉴얼 프로젝트

![Hotel Shilla Mokup](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/3960bfae-ea11-4a5f-9dd2-869d185eb2a2)
<br>

## 프로젝트 소개

- 신라호텔 웹을 보다 보기 편한 사이트로 개선한다.
- 호텔에 대한 정보를 보다 빠르게 확인할 수 있도록 편의성을 강화한다.
- 단순히 이미지로 구성되어 있던 신라호텔 사이트의 구조를 수정한다.
- 로그인, 회원가입, 게시판과 관련된 CRUD 기능을 추가 구현한다.

<br>

## 팀원 구성

<div align="center">

| **정동균** | **함지수** | **김태영** | **주진홍** | **최민기** | **최두연** | **김광제** |
| :------: |  :------: | :------: | :------: |  :------: | :------: | :------: |
| [🧑jjdonggyun](https://github.com/jjdonggyun) | [🧑HamJisoo](https://github.com/HamJisoo) | [🧑Ziggurat23](https://github.com/Ziggurat23) | [🧑sangari1998](https://github.com/sangari1998) | [🧑jajaham4](https://github.com/jajaham4) | [🧑dy0814](https://github.com/dy0814) | [🧑KimKwangje](https://github.com/KimKwangje) |

</div>

<br>


## 1. 개발 환경

- Front : HTML, CSS, Javascript
- Back-end : OracleDB, Eclipse, Apache Tomcat
- 협업 툴 : CANVA
- 디자인 : Figma
<br>


## 2. 프로젝트 목표

### CRUD 구현

- 로그인
    - 회원가입 시 DB에 저장한 이메일과 비밀번호를 이용하여 로그인 기능 구현
- 회원가입
    - 이메일, 비밀번호, 성명, 연락처 등의 항목에 대한 값들을 사용자에게 입력받은 후 DB에 저장하여 회원가입 기능을 구현했다.
- 게시판
    - 게시글 작성, 표시, 수정, 삭제 등 게시글과 관련된 기본적인 CRUD를 구현했다.
    - DB에서 쿼리문으로 직접 등록한 ADMIN 계정만 게시글의 관리를 할 수 있도록 구현하였다.

<br>


## 3. 업무 분석

 - 회원가입
     - Email 값을 기본키로 사용
     - 이메일 중복 여부 확인
     - 공백입력방지 및 비밀번호 확인 구현
 - 로그인
     - Email과 Password값으로 서블릿을 이용한 데이터베이스 조회
     - 스크립트를 이용해 공백입력방지
 - 게시판
     - 관리자 권한 관리를 통한 접근제어
     - 게시글 생성, 수정, 삭제
     - 작성자와 내용을 확인하는 검색기능
     - 게시글을 10개씩 가져오는 페이징 기능
     - 이전 게시물, 다음 게시물 이동 기능

<br>

## 4. 프로젝트 구조

```
├── java
     │     ├── view.board
     │     │     ├── BoardWriteCon
     │     │     ├── BoardListCon
     │     │     ├── BoardInfoCon
     │     │     ├── BoardUpdateCon
     │     │     ├── BoardUpdateConProc
     │     │     ├── BoardDeleteCon
     │     │     ├── BoardFileDownload
     │     │     └── SearchBoardCtrl
     │     ├── view.users
     │     │     ├── Login
     │     │     ├── LogoutCon
     │     │     ├── MemberJoinCon
     │     │     └── CheckDuplicatesCon
     │     ├── biz.board
     │     │     ├── BoardVO
     │     │     └── BoardDAO
     │     ├── biz.users
     │     │     ├── UserVO
     │     │     └── UserDAO
     │     └── util.weather
     │     │     └── WeatherServlet
└── webapp
     │     ├── css, images, js, upload
     │     ├── META-INF
     │     ├── WEB-INF
     │     └── .jsp

```

<br>

## 5. 테이블 설계
| SHILLA_BOARD TABLE |
|----------|
|![table1](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/2004e49d-b590-4776-b2bb-44c7eaeca6d8)|

| SHILLA_USER TABLE |
|----------|
|![table2](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/1add520e-2943-4f07-af87-c4a9d26ad0f4)|


## 6. 개발 기간

### 개발 기간

- 전체 개발 기간 : 2023-??-?? ~ 2024-02-29
- UI 구현 : 2023-??-?? ~ 2023-?-??
- 기능 구현 : 2024-02-22 ~ 2024-02-29

<br>


## 7. 페이지별 기능

### [초기화면]
- 서비스 접속 초기화면으로 화면 좌측상단에 날씨가 표시됩니다.
    - 로그인이 되어 있지 않은 경우 : 로그인 버튼
    - 로그인이 되어 있는 경우 : 로그아웃 버튼

| 초기화면 |
|----------|
|![Hotel Shilla Mokup](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/3960bfae-ea11-4a5f-9dd2-869d185eb2a2)|

<br>

### [회원가입]
- 이메일 중복확인 시 유효성 검사를 진행합니다. 이메일이 중복되었을 경우 경고창으로 '중복돤 이메일' 경고 문구가 나오고 중복되지 않았을 경우 '사용가능한 이메일' 문구가 나옵니다.
- 비밀번호는 회원가입 버튼을 클릭시 13자 이상, 비밀번호 체크의 유효성 검사를 진행합니다.
- 작성이 완료된 후, 유효성 검사가 통과된 경우 회원가입이 완료되고 로그인 화면으로 이동합니다.

| 회원가입 |
|----------|
|![join](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/4f33dcbf-e923-4fcb-9d78-84be8acc126c)|

<br>

### [로그인]
- 이메일 주소와 비밀번호를 입력하면 입력창에서 바로 유효성 검사가 진행되고 통과하지 못한 경우 각 경고 문구가 입력창 상단에 표시됩니다.
- 작성이 완료된 후, 유효성 검사가 통과된 경우 로그인이 가능합니다.
- 로그인 버튼 클릭 시 이메일 주소 또는 비밀번호가 일치하지 않을 경우에는 경고 문구가 나타나며, 로그인에 성공하면 메인 화면으로 이동합니다.

| 로그인 |
|----------|
|![login](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/f3adbcc9-8409-432d-b0e4-e03ada0f7238)|

<br>

### [로그아웃]
- 상단에 활성화 된 로그아웃 버튼을 클릭하면 로그아웃이 됩니다.
- 로그아웃시 로컬 저장소의 토큰 값과 사용자 정보를 삭제하고 초기화면으로 이동합니다.


<br>

### [게시글]
- ADMIN 계정으로 접속 시 게시글을 작성할 수 있는 버튼이 활성화 됩니다.

#### 1. 게시글 작성
- API를 이용하여 게시글 작성을 구현하였습니다.
- 파일 첨부가 가능하고 카테고리를 지정할 수 있습니다.
- 게시글 우측에 업로드 날짜가 표시됩니다.

| 게시글 작성 |
|----------|
|![게시글작성](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/1390ae0d-c5db-42d2-804e-950a9d8e4062)|


<br>

#### 2. 게시글 수정 및 삭제
- 게시글 삭제 버튼 클릭 시, 게시글을 삭제하고 삭제된 내용을 페이지에 반영합니다.
- 게시글 수정 버튼 클릭 시, 게시글을 수정하고 삭제된 내용을 페이지에 반영합니다.

| 게시글 수정 & 삭제 |
|----------|
|![게시글수정삭제](https://github.com/jjdonggyun/ShillaHotel_Project/assets/163277674/d10ef05a-f5e8-486c-a6dc-ad851d49f62a)|

<br>
