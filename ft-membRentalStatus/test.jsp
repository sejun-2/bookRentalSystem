<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Loan System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

    <div class="header">
        <h1>도서 대여 시스템</h1>
    </div>

    <div class="section-title">회원 정보</div>
    <div class="search-box">
        <div class="search-group">
            <input type="text" id="customerSearch1" placeholder="회원번호">
            <button id="member-number-name-button">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="customerSearch1" placeholder="회원명">
            <button id="member-number-name-button">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="customerSearch2" placeholder="휴대폰번호">
            <button onclick="searchTable('customerSearch2', 'customerTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="customerSearch2" placeholder="대여상태">
            <button onclick="searchTable('customerSearch2', 'customerTable')">검색</button>
        </div>
    </div>
    <table id="customerTable">
        <thead>
            <tr>
                <th>회원번호</th>
                <th>회원명</th>
                <th>휴대폰번호</th>
                <th>주소</th>
                <th>대여상태</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>100</td>
                <td>강지은</td>
                <td>010-1234-5678</td>
                <td>충청남도 천안시 서북구 성성2길 52-1</td>
                <td>연체</td>
            </tr>
        </tbody>
    </table>

    <div class="section-title">회원 대여 내역 조회</div>
    <div class="search-box">
        <div class="search-group" style="display: flex;">
            <input type="text" id="historySearch1" placeholder="회원번호">
            <button onclick="searchTable('historySearch1', 'historyTable')">검색</button>
        </div>
        <div class="search-group" style="display: flex;">
            <input type="text" id="historySearch1" placeholder="회원명">
            <button onclick="searchTable('historySearch1', 'historyTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="customerSearch2" placeholder="휴대폰번호">
            <button onclick="searchTable('customerSearch2', 'customerTable')">검색</button>
        </div>
    </div>
    <table id="historyTable">
        <thead>
            <tr>
                <th>대여번호</th>
                <th>회원명</th>
                <th>도서제목</th>
                <th>대여날짜</th>
                <th>반납기한</th>
                <th>연체날짜</th>  
                <th>정지날짜</th>  
                <th>반납날짜</th>   
                <th>대여상태</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>10000</td>
                <td>강지은</td>
                <td>아이가 없는 집</td>
                <td>2024.06.22</td>
                <td>2024.06.29</td>
                <td></td>
                <td></td>
                <td></td>
                <td>대여중</td>
            </tr>
            <tr>
                <td>10001</td>
                <td>강지은</td>
                <td>모순</td>
                <td>2024.02.26</td>
                <td>2024.03.03</td>
                <td></td>
                <td></td>
                <td></td>
                <td>연체</td>
            </tr>
        </tbody>
    </table>
<!-- 10001	100	1001	24/06/21	od -->
    <div class="section-title">대여 현황 조회</div>
    <div class="search-box">
        <div class="search-group">
            <input type="text" id="bookSearch1" placeholder="대여번호">
            <button onclick="searchTable('bookSearch1', 'bookTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="bookSearch1" placeholder="도서번호">
            <button onclick="searchTable('bookSearch1', 'bookTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="bookSearch2" placeholder="도서제목">
            <button onclick="searchTable('bookSearch2', 'bookTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="bookSearch2" placeholder="대여상태">
            <button onclick="searchTable('bookSearch2', 'bookTable')">검색</button>
        </div>
        <form>
            <div class="form-group" style="display: inline-block;">
                <label for="start-date" style="font-size: 1rem;">시작날짜</label>
                <input type="date" id="start-date" name="start-date" style="padding: 7px;">
            </div>&nbsp;
            <div class="form-group" style="display: inline-block;">
                <label for="end-date">종료날짜</label>
                <input type="date" id="end-date" name="end-date" style="padding: 7px;">
            </div>
            <button onclick="searchTable('start-date', 'historyTable')">검색</button>
        </form>
    </div>
    <table id="bookTable">
        <thead>
            <tr>
                <th>대여번호</th>
                <th>회원명</th>
                <th>도서제목</th>
                <th>대여날짜</th> 
                <th>반납기한</th>      
                <th>연체날짜</th>  
                <th>정지날짜</th>  
                <th>반납날짜</th>           
                <th>대여상태</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>10000</td>
                <td>강지은</td>
                <td>아이가 없는 집</td>
                <td>2024.06.22</td>     
                <td>2024.06.29</td>  
                <td></td>    
                <td></td>    
                <td></td>    
                <td>대여중</td>
            </tr>
        </tbody>
    </table>

    <div class="section-title">도서 정보</div>
    <div class="search-box">
        <div class="search-group">
            <input type="text" id="loanSearch1" placeholder="도서번호">
            <button onclick="searchTable('loanSearch1', 'loanTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="loanSearch1" placeholder="도서제목">
            <button onclick="searchTable('loanSearch1', 'loanTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="loanSearch2" placeholder="장르명">
            <button onclick="searchTable('loanSearch2', 'loanTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="loanSearch2" placeholder="저자">
            <button onclick="searchTable('loanSearch2', 'loanTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="loanSearch2" placeholder="출판사">
            <button onclick="searchTable('loanSearch2', 'loanTable')">검색</button>
        </div>
        <div class="search-group">
            <input type="text" id="loanSearch2" placeholder="재고">
            <button onclick="searchTable('loanSearch2', 'loanTable')">검색</button>
        </div>
    </div>
    <table id="loanTable">
        <thead>
            <tr>
                <th>도서번호</th>
                <th>도서제목</th>
                <th>저자</th>
                <th>출판사</th>
                <th>가격</th>
                <th>장르</th>
                <th>발행일</th>
                <th>재고</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1000</td>
                <td>아이가 없는 집</td>
                <td>알렉스 안도릴</td>
                <td>필름</td>
                <td>16,200원</td>
                <td>소설</td>
                <td>2024.06.12</td>
                <td>3</td>
            </tr>
        </tbody>
    </table>

    <script src="js/script.js"></script>

</body>
</html>