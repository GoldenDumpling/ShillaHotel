<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글처리

request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
//값 받기
String message = (String) request.getAttribute("message");
if (message == null) {
    message = "0";
}
System.out.println("message : "+message);
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>호텔신라 회원가입</title>
    <link rel="shortcut icon" href="./images/main/app_icon.png" />
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/join.css">
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>
    <script>
    </script>
<%
	if(message.equals("1")){
%>
	<script>
    	alert('중복된 이메일 입니다.');
	</script>
<%
	} else if(message.equals("2")){
%>
	<script>
		alert('사용 가능한 이메일 입니다.');
	</script>
<%
	}else if(message.equals("3")){
%>
<script>
		alert('필수 정보를 입력해주세요.');
	</script>
<%
	}else if(message.equals("4")){
%>
<script>
		alert('이메일 중복체크를 해주세요.');
	</script>
<%
	}else if(message.equals("5")){
%>
<script>
		alert('비밀번호를 확인해주세요.');
	</script>
<%
	}
%>
  </head>
  <body>
    <div id="wrap">
      <header>
      	<jsp:include page="/include/header.jsp" />
      </header>
      <div class="sign_content">

        <h3>회원가입</h3>
        <form action="MemberJoinCon" method="post">
          <h4><span>필수 정보 입력</span></h4>
          <div class="form_table">
            <table>
              <tbody>
                <tr>
                  <th>이메일</th>
                  <td colspan="3">
                    <div class="overflow_box">
                      <div class="input_box">
                        <input
                          type="text"
                          class="email_val"
                          placeholder="이메일"
                          maxlength="30"
                          title="아이디"
                          name="email1"
                          value="${email1 }"
                        />&gt;
                      </div>
                      <div class="dot">@</div>
                      <div class="select_box">
							<select class="email_select" title="도메인 메일주소" name="email2">
							    <option value="select">선택</option>
							    <option value="naver.com" ${email2 == 'naver.com' ? 'selected' : ''}>naver.com</option>
							    <option value="hanmail.net" ${email2 == 'hanmail.net' ? 'selected' : ''}>hanmail.net</option>
							    <option value="gmail.com" ${email2 == 'gmail.com' ? 'selected' : ''}>gmail.com</option>
							    <option value="yahoo.com" ${email2 == 'yahoo.com' ? 'selected' : ''}>yahoo.com</option>
							    <option value="nate.com" ${email2 == 'nate.com' ? 'selected' : ''}>nate.com</option>
							    <option value="hotmail.com" ${email2 == 'hotmail.com' ? 'selected' : ''}>hotmail.com</option>
							    <option value="SELF" ${email2 == 'SELF' ? 'selected' : ''}>직접입력</option>
							</select>


                        <div class="hidden_input">
                          <input
                            type="text"
                            class="email2_val"
                            id="email_domain"
                            placeholder="직접입력"
                            maxlength="100"
                            title="도메인 메일 주소 직접입력"
                            onchange="javascript:sign.emailChange()"
                          />
                        </div>
                      </div>
                      <!-- 중복 확인 버튼 -->
					  <button type="button" class="btn_double_check mot2">중복 확인</button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>비밀번호</th>
                  <td colspan="3">
                    <div class="input_box pw">
                      <input
                        type="password"
                        class="pw_val"
                        placeholder="비밀번호 (13자 이상)"
                        name="password"
                        title="비밀번호란"
                        
                      />
                    </div>
                    <div class="input_box pw">
                      <input
                        type="password"
                        class="pw_check_val"
                        placeholder="비밀번호 확인"
                        title="비밀번호 확인란"
                        name="password1"
                      />
                    </div>
                  </td>
                </tr>
                <tr>
                  <th class="pt">성명</th>
                  <td class="pt">
                    <div class="input_box">
                      <input
                        type="text"
                        class="name_val"
                        name="name"
                        placeholder="성명"
                        maxlength="30"
                        title="성명란"
                      />
                    </div>
                  </td>
                  <th class="pt">성별</th>
                  <td class="pt2">
                    <ul class="radio_ul">
                      <li>
                        <input
                          type="radio"
                          id="sex_radio1"
                          name="gender"
                          value="M"
                        /><label for="sex_radio1">남</label>
                      </li>
                      <li>
                        <input
                          type="radio"
                          id="sex_radio2"
                          name="gender"
                          value="W"
                        /><label for="sex_radio2">여</label>
                      </li>
                    </ul>
                  </td>
                </tr>
                <tr>
                  <th>생년월일</th>
                  <td colspan="3">
                    <div class="select_box small">
                      <select class="year_select" title="출생년도" name="birth1">
                        <option value="select">년도</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                        <option value="1970">1970</option>
                        <option value="1969">1969</option>
                        <option value="1968">1968</option>
                        <option value="1967">1967</option>
                        <option value="1966">1966</option>
                        <option value="1965">1965</option>
                        <option value="1964">1964</option>
                        <option value="1963">1963</option>
                        <option value="1962">1962</option>
                        <option value="1961">1961</option>
                        <option value="1960">1960</option>
                        <option value="1959">1959</option>
                        <option value="1958">1958</option>
                        <option value="1957">1957</option>
                        <option value="1956">1956</option>
                        <option value="1955">1955</option>
                        <option value="1954">1954</option>
                        <option value="1953">1953</option>
                        <option value="1952">1952</option>
                        <option value="1951">1951</option>
                        <option value="1950">1950</option>
                        <option value="1949">1949</option>
                        <option value="1948">1948</option>
                        <option value="1947">1947</option>
                        <option value="1946">1946</option>
                        <option value="1945">1945</option>
                        <option value="1944">1944</option>
                        <option value="1943">1943</option>
                        <option value="1942">1942</option>
                        <option value="1941">1941</option>
                        <option value="1940">1940</option>
                        <option value="1939">1939</option>
                        <option value="1938">1938</option>
                        <option value="1937">1937</option>
                        <option value="1936">1936</option>
                        <option value="1935">1935</option>
                        <option value="1934">1934</option>
                        <option value="1933">1933</option>
                        <option value="1932">1932</option>
                        <option value="1931">1931</option>
                        <option value="1930">1930</option>
                        <option value="1929">1929</option>
                        <option value="1928">1928</option>
                        <option value="1927">1927</option>
                        <option value="1926">1926</option>
                        <option value="1925">1925</option>
                        <option value="1924">1924</option>
                        <option value="1923">1923</option>
                        <option value="1922">1922</option>
                        <option value="1921">1921</option>
                        <option value="1920">1920</option>
                      </select>
                      <input type="hidden" id="s_year" name="s_year" />
                    </div>
                    <div class="select_box small">
                      <select class="month_select" title="출생월" name="birth2">
                        <option value="month">월</option>
                        <option value="01">1</option>
                        <option value="02">2</option>
                        <option value="03">3</option>
                        <option value="04">4</option>
                        <option value="05">5</option>
                        <option value="06">6</option>
                        <option value="07">7</option>
                        <option value="08">8</option>
                        <option value="09">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                      </select>
                      <input type="hidden" id="s_month" name="s_month" />
                    </div>
                    <div class="select_box small">
                      <select class="day_select" title="출생일" name="birth3">
                        <option value="day">일</option>
                        <option value="01">1</option>
                        <option value="02">2</option>
                        <option value="03">3</option>
                        <option value="04">4</option>
                        <option value="05">5</option>
                        <option value="06">6</option>
                        <option value="07">7</option>
                        <option value="08">8</option>
                        <option value="09">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                      </select>
                      <input type="hidden" id="s_day" name="s_day" value="00" />
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>연락처</th>
                  <td colspan="3">
                    <div class="overflow_box">
                      <div class="select_box small">
                        <select class="phone1_select" title="휴대폰 앞자리 " name="tel1">
                          <option value="select">선택</option>
                          <option value="010" selected="selected">010</option>
                          <option value="011">011</option>
                          <option value="016">016</option>
                          <option value="017">017</option>
                          <option value="018">018</option>
                          <option value="019">019</option>
                        </select>
                      </div>
                      <div class="input_box small">
                        <input
                          type="text"
                          class="phone2_val"
                          maxlength="4"
                          placeholder="0000"
                          title="휴대폰 두번째 자리"
                          name="tel2"
                        />
                      </div>
                      <div class="input_box small">
                        <input
                          type="text"
                          class="phone3_val"
                          maxlength="4"
                          placeholder="0000"
                          title="휴대폰 마지막 자리"
                          name="tel3"
                        />
                      </div>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <h4><span>추가 정보 입력</span></h4>
          <div class="form_table">
            <table>
              <colgroup>
                <col width="185px" />
                <col width="245px" />
                <col width="150px" />
                <col width="280px" />
              </colgroup>
              <tbody>
                <tr>
                  <th>프로모션 코드</th>
                  <td colspan="3">
                    <div class="input_box">
                      <input
                        type="text"
                        placeholder="프로모션 코드"
                        name="promotion_cd"
                        maxlength="10"
                        title="프로모션 코드란"
                      />
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>거주 국가</th>
                  <td>
                    <div class="input_box">
                      <input
                        type="text"
                        placeholder="국가"
                        name="nation"
                        maxlength="30"
                        title="거주 국가란"
                      />
                    </div>
                  </td>
                  <th>거주 지역</th>
                  <td>
                    <div class="input_box">
                      <input
                        type="text"
                        placeholder="지역"
                        name="area"
                        maxlength="50"
                        title="거주 지역란"
                      />
                    </div>
                  </td>
                </tr>
                <tr>
                  <th class="pt">직업</th>
                  <td class="pt" colspan="3">
                    <div class="input_box">
                      <input
                        type="text"
                        placeholder="직업"
                        name="occupy"
                        maxlength="30"
                        title="직업란"
                      />
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>결혼유무</th>
                  <td colspan="3">
                    <ul class="radio_ul">
                      <li>
                        <input
                          type="radio"
                          id="marry_radio1"
                          name="marriage"
                          value="N"
                        /><label for="marry_radio1">미혼</label>
                      </li>
                      <li>
                        <input
                          type="radio"
                          id="marry_radio2"
                          name="marriage"
                          value="Y"
                        /><label for="marry_radio2">기혼</label>
                      </li>
                    </ul>
                  </td>
                </tr>
                <tr>
                  <th class="pt">관심분야</th>
                  <td class="pt" colspan="3">
                    <ul class="radio_ul interest_ul">
                      <li>
                        <input
                          type="checkbox"
                          class="interest_li"
                          id="interest_radio1"
                          name="interest1"
                          value="room"
                        /><label for="interest_radio1">객실</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          class="interest_li"
                          id="interest_radio2"
                          name="interest2"
                          value="restaurant"
                        /><label for="interest_radio2">레스토랑 &amp; 바</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          class="interest_li"
                          id="interest_radio3"
                          name="interest3"
                          value="wedding"
                        /><label for="interest_radio3">웨딩</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          class="interest_li"
                          id="interest_radio4"
                          name="interest4"
                          value="bakery"
                        /><label for="interest_radio4">베이커리</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          class="interest_li"
                          id="interest_radio5"
                          name="interest5"
                          value="flower"
                        /><label for="interest_radio5">플라워샵</label>
                      </li>
                    </ul>
                  </td>
                </tr>
                <tr>
                  <th>
                    <div class="line2">
                      선호하는 계절 <br /><span style="font-size: 10px"
                        >(중복 선택 가능)</span
                      >
                    </div>
                  </th>
                  <td colspan="3">
                    <ul class="radio_ul membership_ul">
                      <li>
                        <input
                          type="checkbox"
                          class="season_li"
                          id="season_radio1"
                          name="season1"
                          value="spring"
                        /><label for="season_radio1">봄</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          class="season_li"
                          id="season_radio2"
                          name="season2"
                          value="summer"
                        /><label for="season_radio2">여름</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          class="season_li"
                          id="season_radio3"
                          name="season3"
                          value="fall"
                        /><label for="season_radio3">가을</label>
                      </li>
                      <li class="no_mr">
                        <input
                          type="checkbox"
                          class="season_li"
                          id="season_radio4"
                          name="season4"
                          value="winter"
                        /><label for="season_radio4">겨울</label>
                      </li>
                    </ul>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <h4><span>이용약관 및 개인정보 수집 동의</span></h4>
          <div class="terms_area">
            <ul class="terms_ul">
              <li>
                <div class="title">이용 약관<span>(필수)</span></div>
                <div class="box">
                  제1조 멤버십 규정 일반<br />
                  1. 본 약관은 주식회사 호텔신라(이하 “회사”)의 호텔 멤버십
                  프로그램인 Shilla Rewards(이하 “멤버십 프로그램”)의 이용에
                  관한 기본적인 사항을 정함을 목적으로 합니다.<br />
                  2. 멤버십 프로그램의 이용약관 및 멤버십 운영에 관련한 각종
                  혜택 및 서비스의 적용 범위는 다음과 같습니다. (이하 (1)~(3)을
                  총칭하여 "가맹호텔") <br />
                  (1) 신라호텔 : 서울신라호텔, 제주신라호텔 <br />
                  (2) 신라스테이 전 지점 <br />
                  (3) 그 외 향후 제휴 호텔 및 리조트 <br />
                  3. 회사는 본 약관에서 멤버십 프로그램의 회원 자격과 혜택,
                  멤버십 포인트 획득과 사용에 관한 내용을 규정합니다. <br />
                  4. 멤버십 프로그램은 만 19세 이상의 개인 회원을 대상으로 하며,
                  법인 또는 단체 등은 멤버십에 가입할 수 없습니다. <br />
                  5. 멤버십 프로그램의 약관, 규칙 중에 신청자 및 회원의 소속
                  국가 및 거주지의 강행법규에 위배되는 부분이 있을 경우, 해당
                  부분은 해당 회원에 한하여 무효화 합니다. <br />
                  6. 회사는 멤버십 운영 주체의 상황에 따라 본 이용약관을 포함한
                  프로그램 구성, 특전 및 그 내용을 변경하고, 본 멤버십
                  프로그램을 종료할 수 있습니다. <br />
                  7. 회사는 본 약관을 변경하는 경우 변경되는 약관의 적용일자 및
                  변경내용, 사유 등을 명시하여 현행약관과 함께 변경약관
                  적용일로부터 10일(회원에게 불리하게 변경되는 경우 1개월)
                  이전에 서면, 전자우편, 홈페이지 공지 등의&nbsp;방법을 통해
                  회원에게 통지합니다. 회원은 변경약관에 동의하지 않을 수
                  있으며, 변경약관에 동의하지 않을 경우 회원 탈퇴를 할 수
                  있습니다. 단, 회사가 위 약관 변경 통지를 하면서 변경약관
                  적용일까지 의사표시를 하지 않으면 변경약관에 동의한 것으로
                  간주한다는 내용을 고지하였음에도 불구하고, 회원이 명시적으로
                  거부의사를 표시하지 않은 경우 회원이 변경약관에 동의한 것으로
                  간주합니다. 단, 회원에게 불리하게 변경되는 경우 통지 후 2개월
                  이내 회원 탈퇴를 할 수 있습니다. <br />
                  8. 회사는 멤버십 프로그램 종료 최소 6개월 이전에 호텔 공식
                  웹사이트(https://www.shillahotels.com)및 모바일 앱(신라호텔
                  어플리케이션)(이하 “멤버십 홈페이지”)을 통해 공지해야 하며, 전
                  회원을 대상으로 1회 이상 전자우편을 통한 안내문을
                  발송합니다.<br />
                  9. 멤버십 프로그램 종료 통보 이후 6개월 경과 시점 기준으로
                  보유한 포인트는 자동 소멸되며, 모든 혜택 및 서비스 제공이
                  중단됩니다.<br />
                  10. 주소 및 기타 개인정보 사항 변경 시 회원은 회사에 해당
                  내용을 통보해야 하며, 미 통보로 인한 회원의 불이익은 회사가
                  책임지지 않습니다.<br />
                  11. 회사는 호텔정보 및 회원의 계정명세 등을 회원에게 통지할 수
                  있고, 우편에 의한 통지의 경우 그 분실 또는 전달의 지연에 대한
                  책임을 지지 않습니다.<br />
                  12. 본 약관은 대한민국 법률이 적용되며, 본 약관과 관련된 제반
                  분쟁 및 소송은 회원의 주소지, 회사의 소재지를 관할하는 법원을
                  합의 관할법원으로 합니다.<br />
                  <br />
                  제2조 회원 가입 및 계정생성<br />
                  1. 회원 가입은 멤버십 홈페이지 및 모바일 앱 또는 가맹호텔의
                  지정된 영업장에서 가능합니다.<br />
                  2. 회원 가입은 무료입니다.<br />
                  3. 회원은 하나를 초과하는 멤버십을 가입하거나 소유할 수
                  없습니다.<br />
                  4. 멤버십 중복 가입 시 하나를 제외한 멤버십은 강제 탈퇴
                  처리되며, 탈퇴 처리되는 멤버십의 포인트, 혜택은 자동
                  소멸됩니다.<br />
                  5. 회원 등록 시 성명, 생년월일, 성별, 전자우편주소, 전화번호는
                  필수 기입 사항입니다.<br />
                  6. 회원번호는 회원 등록 즉시 발급됩니다.<br />
                  7. 회원은 회원번호를 이용하여 멤버십 홈페이지에서 본인의
                  계정을 확인할 수 있습니다.<br />
                  8. 회원은 멤버십 홈페이지의 개인 계정을 통해 보유 포인트,
                  적립내역, 개인정보 등 각종 정보를 열람 및 수정할 수
                  있습니다.<br />
                  9. 회원 가입 시 모바일 멤버십 카드(이하 “멤버십 카드”)가
                  발급되며 모바일 멤버십 카드는 멤버십 홈페이지에서 확인
                  가능합니다. <br />
                  <br />
                </div>
                <div class="agree_box">
                  <input
                    type="checkbox"
                    class="terms_agree"
                    id="terms_agree1"
                    name="agree1"
                  /><label for="terms_agree1">동의함</label>
                </div>
              </li>
              <li>
                <div class="title">
                  개인정보 수집 및 이용<span>(필수)</span>
                </div>
                <div class="box">
                  호텔신라 웹 회원 가입과 관련하여&nbsp;귀사에서 아래와 같이
                  개인정보를 수집 및 이용하는데 동의합니다.<br />
                  <br />
                  1. 개인정보 수집 및 이용 항목<br />
                  - 필수사항 : 성명, 성별, 생년월일, 이메일, 연락처, 비밀번호<br />
                  - 선택사항 : 거주국가, 거주지역, 직업, 결혼유무, 관심분야,
                  호텔 멤버십 가입여부, 이메일/문자/텔레마케팅 수신여부<br />
                  <br />
                  2. 개인정보 수집 및 이용 목적<br />
                  <span
                    style="font-size: 14px; font-weight: bold; color: #856f56"
                    >- 호텔신라 에서 제공되는 웹 회원 전용 서비스 제공 및 본인
                    확인<br />
                    - 고객공지, 불만처리를 위한 원활한 의사소통의 경로확보
                    <br />
                    - 고객 만족도 조사 </span
                  ><br />
                  &nbsp;<br />
                  3. 개인정보 보유 및 이용 기간<br />
                  <span
                    style="font-size: 14px; font-weight: bold; color: #856f56"
                    >- 수집이용 동의일로부터 회원 탈퇴 시까지</span
                  ><br />
                  &nbsp;<br />
                  ※ 위 사항에 대한 동의를 거부할 수 있으나, 미동의 시 회원
                  가입서비스 이용이 제한됨을 알려드립니다.
                </div>
                <div class="agree_box">
                  <input
                    type="checkbox"
                    class="terms_agree"
                    id="terms_agree2"
                    name="agree2"
                  /><label for="terms_agree2" class="line2">동의함</label>
                </div>
              </li>
              <li class="big">
                <div class="title">
                  마케팅 정보 이용<span class="gray">(선택)</span>
                </div>
                <div class="box">
                  1. 수집, 이용 항목 <br />
                  - 필수사항 : 성명, 성별, 생년월일, 이메일, 연락처, 비밀번호<br />
                  - 선택사항 : 거주국가, 거주지역, 직업, 결혼유무, 관심분야,
                  호텔 멤버십 가입여부, 이메일/문자/텔레마케팅 수신여부<br /><br />
                  2. 수집·이용 목적 <br />
                  ㈜호텔신라 상품 및 서비스 소개(호텔, 면세점 등),
                  신라에이치엠㈜ 기타 제휴 호텔의 상품 및 서비스 소개,
                  사은·판촉행사 안내, 만족도 조사, 시장 조사<br /><br />
                  3. 보유·이용 기간 <br />
                  회원 탈퇴 시 까지 또는 마케팅 활용 동의 철회시 까지 중 빠른
                  시점<br /><br />
                  ※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을
                  경우 개인형 맞춤 상품 안내 등 유용한 상품안내를 받아보실 수
                  없습니다.
                </div>
                <div class="agree_box">
                  <input
                    type="checkbox"
                    class="terms_agree"
                    id="terms_agree3"
                  /><label for="terms_agree3">동의함</label>
                  <div class="agree_select choice_select sign_choice_agree">
                    <ul class="fclear">
                      <li>
                        <input
                          type="checkbox"
                          id="terms_agree3_email"
                          data-type="subs_mail"
                        /><label for="terms_agree3_email">이메일</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          id="terms_agree3_sms"
                          data-type="subs_sms"
                        /><label for="terms_agree3_sms">문자</label>
                      </li>
                      <li>
                        <input
                          type="checkbox"
                          id="terms_agree3_tm"
                          data-type="subs_tm"
                        /><label for="terms_agree3_tm">TM</label>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
            <div class="agree_all_box">
              <input type="checkbox" id="terms_agree_all" /><label
                for="terms_agree_all"
                >위 약관에 전체 동의</label
              >
              <p>
                이용 약관, 개인정보 수집 및 이용, 마케팅 정보 이용에 모두
                동의(전체 동의 시 선택 항목 포함)
              </p>
            </div>
          </div>
          <div class="bottom_btn_area">
          	<input type="hidden" name="isDuplicated" value="${isDuplicated }" />
          	<input type="submit" value="회원가입" />
          </div>
        </form>
      </div>
      <footer>
      	<jsp:include page="/include/footer.jsp" />
      </footer>
      <aside>
        <div><a href="#" class="top">TOP</a></div>
      </aside>
    </div>
    <script>
      $("#terms_agree_all").change(function () {
        var isChecked = $(this).prop("checked");

        $(".terms_agree").prop("checked", isChecked);
      });
      $('a[href="#"]').each(function() {
        $(this).click(function(e) {
            e.preventDefault();
        })
    });
      //중복 체크 버튼 클릭시 폼의 ACTION 바꾸기
      $('.btn_double_check').on('click', function() {
   	    var form = $(this).closest('form'); // 현재 버튼과 가장 가까운 폼 요소를 찾음
   	    form.attr('action', 'checkDuplicatesCon'); // 중복 확인을 위한 action 경로 설정
   	 	form.attr('method', 'post'); // 폼 메소드를 POST로 설정
   	    form.submit(); // 폼 제출
   	  });
    </script>
    <script src="./js/join.js"></script>
    <script src="./js/jquery.scrollTo.min.js"></script>
    <script src="./js/scroll.js"></script>
  </body>
</html>
