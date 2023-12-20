<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.hidden {
  display: none; /* 숨김 상태 */
}
.visible {
  display: block; /* 보이는 상태 */
}
.chat-container {
	width: 100%;
	height: 700px;
	margin-bottom: 200px;
}
.find-id-btn-div{
	display: flex;
	width: 1100px;
	height: auto;
	margin: 0 auto;
	margin-bottom: 50px;
}
.chat-container-1 {
	display: flex;
	width: 1100px;
	height: 100%;
	margin: 0 auto;
}

.chat-list {
	width: 50%;
	height: 100%;
}

.chat-detail {
	width: 50%;
	height: 100%;
}

.chat-detail {
	margin-left: 30px;
	border-right: 1px solid #eaebee;
}

.chat-list {
	overflow: hidden scroll;
	border-left: 1px solid #eaebee;
}

.chat-detail-name {
	width: 100%;
	height: 7%;
	display: flex;
	justify-content: space-between;

}
.chat-detail-name button{
	height:80%;

}

.chat-form {
	display: flex;
	flex-direction: column;
	position: relative;
	margin: 0 16px 0 16px;
	border: 1px solid black;
	border-radius: 8px;
	height: 18%;
	-webkit-box-pack: justify;
	justify-content: space-between;
}

.chat-textarea {
	margin: 12px 12px 0px;
	width: calc(100% - 24px);
	height: 100px;
	line-height: 150%;
	padding: 0px;
	resize: none;
	font-size: 14px;
	border: none;
	outline: none;
	color: black;
}

.chatform-option-area {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	margin: 8px 10px;
	align-items: center;
}

.chat-send-btn {
	border-radius: 4px;
	border: none;
	width: 64px;
	height: 32px;
	line-height: 150%;
	font-weight: bold;
	font-size: 14px;
	background-color: #70c745;
	color: rgb(255, 255, 255);
	transition: background-color 0.5s ease 0s, color 0.5s ease 0s
}

.chat-div {
	/* background-color: #f3f3df; */
	height: 100%;
	padding: 0px 20px;
	border-radius: 10px;
	
}
.chat-area {
	/* background-color: #f3f3df; */
	height: 75%;
	padding: 0px 20px;
	border-radius: 10px;
	overflow-y:auto;
	
}

.chat-item-div{
	margin:15px;
}
.chat-item-div:hover{
	cursor: pointer;
}

.myDiv {
	height: auto;
	display: flex;
	justify-content: flex-end;
	margin: 10px;
	align-items: end;
}

.myTextDiv {
	max-width: 200px;
	word-wrap: break-word;
	height: auto;
	display: inline-block;
	background-color: #70c745;
	padding: 10px;
	font-size: 13px;
	font-weight: 600;
	color: white;
	border-top-left-radius:30px;
	
	border-bottom-right-radius:30px;
	border-bottom-left-radius:30px;
}
.otherDiv {
	height: auto;
	display: flex;
	justify-content: flex-start;
	margin: 10px;
	align-items: end;
}

.otherTextDiv {
	max-width: 200px;
	word-wrap: break-word;
	height: auto;
	display: inline-block;
	background-color: white;
	padding: 10px;
	font-size: 12px;
	font-weight: 600;
	border: 1px solid #eaebee;
	border-top-right-radius:30px;
	
	border-bottom-right-radius:30px;
	border-bottom-left-radius:30px;
}
/* .find-id-result-div{
	width:100%;
	height: 150px;
	border: 1px solid #eaebee;
	border-radius: 10px;
	box-shadow: 3px 3px 3px 3px;
	padding: 10px;
	margin-bottom: 10px;
	
} */
.find-id-result-div:hover{
	cursor: pointer;
}
.createDate{
	font-size: 10px;
	margin:0 5px 0 5px;
}
.not-chat-div,.no-chat-user{
	height:100%;
	width:100%;
	position : relative;	
}
.not-chat-div-in,.no-chat-user-in{
	width: 350px;
	position : absolute;
	left:50%;
	top:50%;
	transform: translate(-50%,-50%);

}
.other_profile_img{
	width: 75px;
	height: 75px;
	border-radius: 30%;
	object-fit: cover;
}
.post-content{
	margin-left:30px;
	color:black;
}
.post-content p{

	font-size: 12px;
	margin-top:10px;
}
.message-p{
	width:300px;
	overflow: hidden;
	text-overflow: ellipsis;
    white-space: nowrap;
}
.modal-header-1{
	padding:1em;
}

.searchContainer{
	margin-top:32px;
}
.searchOutDiv{
	width: 320px;
	height:35px;

	/* margin-top: 15px;
	margin-bottom: 15px; */
	vertical-align:middle;
	border: 2px black solid ;
}
.searchOutDiv input{
	width: 400px;
	height: 20px;
	border-style: none;
	padding:10px;
	outline: none;
	
}
div {
    transition: height 0.5s ease-in-out;
}
.searchInDiv{
	display:flex;
	align-items:center;
	width:310px;
	height:20px;
	margin:0 auto;
	margin:5px auto;
}
.searchInDiv img{
	width:15px;
	height:15px;
}
#searchBtn{
	display: flex;
	justify-content: center;
	align-items: center;
 	width:30px;
 	height:25px;
 	border:none;
 	align-content: center;
}
#sType{
	border:none;
	outline:none;
	
}
#chat-room-out-btn{
	height:100%;
	border: none;
}
.emoji-div{
	width:100%;
	height:30%;
	overflow: hidden scroll;
}
.emoji-item{
	margin:10px;
}
.emoji-item:hover{
	cursor:pointer;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	
	<!-- 현재 선택된 방의 번호를 저장 -->
	<input type="hidden" id="currentChatRoomNo">
	<!-- ##### nav 그림 + 페이지 설명 ##### -->
	<div class="breadcrumb-area">
		<!-- Top Breadcrumb Area -->
		<div
			class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
			style="background-image: url(resources/img/bg-img/24.jpg);">
			<h2>채팅</h2>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home"></i> Home</a></li>
							<li class="breadcrumb-item"><a href="#">채팅</a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- 채팅 상대를 찾아 방을 생성할 수 있는 모달창을 띄우는 버튼과 모달창 존재 -->
	<div class="find-id-btn-div">
		<button type="button" onclick="findUser();" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		  채팅 상대 찾기
		</button>
		<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header-1">
		      	<div style="display:flex; justify-content: space-between;">
			        <h1 class="modal-title fs-5" id="staticBackdropLabel">채팅 상대 아이디로 검색</h1>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      	
		      	</div>
		      	<div class="searchContainer">
			        <div class="searchOutDiv">
			        	<div class="searchInDiv">
				  			<input type="search" id="searchInput" placeholder="search..">
					  		<button id="searchBtn" onclick="findUser();"><img src="/tinyfarm/resources/img/icon/search.svg"></button>       	
				        	
			        	</div>
			        	
			  			
			  		</div> 
        		</div>
		      </div>
		      <div class="modal-body find-id-div">

		      </div>
		      <div class="modal-footer">
		        <button type="button" id="closeFindIdModalBtn" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		 
		      </div>
		    </div>
		  </div>
		</div>
	
	</div>
	
	<!-- 채팅 구역. 채팅상대 목록과 채팅치는 구역이 5:5 비율로 존재 -->
	<div class="chat-container">
		<div class="chat-container-1">
		
		`	<!-- 채팅 상대 목록이 나타나는 구역 -->
			<div class="chat-list">
				<div class="chat-list-title">
					<h2>채팅 목록</h2>
				</div>
				
			</div>
			
			
			
			<!-- 채팅 치는 구역 채팅상대를 클릭했나 안했나에 따라 보여지는 화면이 달라짐(class hidden/visible 이용)-->
			<div class="chat-detail">
				<div class="chat-div hidden">
					<div class="chat-detail-name">
						<h4><b id="chat-part-name">채팅 상대방 이름</b></h4>
						<div class="dropdown">
						  <button id="chat-room-out-btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
						    <img src="resources/img/icon/menu-icon.png">
						  </button>
						  <ul class="dropdown-menu">
						    <li><button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#exitModal">삭제하기</a></li>
						    <li><button class="dropdown-item">차단하기</a></li>
				
						  </ul>
						</div>
						
					</div>
					<div class="chat-area">
						
					</div>
	
					<div class="chat-form">
						<textarea placeholder="메시지를 입력해주세요" class="chat-textarea"></textarea>
						<div class="chatform-option-area">
							<button onclick="visibleEmojiDiv();" style="border:none;"><img alt="이모티콘" src="resources/img/icon/emoji-icon.png"></button>
							<span class="text-length"></span>
							<button class="chat-send-btn" onclick="send();">전송</button>
						</div>
	
					</div>
					<div class="emoji-div hidden">
					
					</div>
				
				</div>
				<div class="not-chat-div visible">
					<div class="not-chat-div-in" style="margin:0 auto;" align="center">
						<img src='resources/img/icon/speech-bubble.png' alt=''>
						<h4><b>대화할 상대를 정해주세요</b></h4>
					
					</div>
				</div>
			</div>

		</div>

	</div>
	<!-- 채팅방 나가기 모달창 -->
	<!-- Modal -->
	<div class="modal fade" id="exitModal" tabindex="-1" aria-labelledby="exitModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exitModalLabel"><b>채팅방 나가기</b></h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        정말로 채팅방을 나가시겠습니까? <br>
	        채팅방을 나가면 채팅 데이터는 전부 삭제됩니다.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        <button onclick="deleteRoom();" class="btn btn-danger">채팅방 삭제</a>
	      </div>
	    </div>
	  </div>
	</div>
	<script>
		//-------------------------페이지에 들어오는 순간 실행될 함수 시작----------------------------------------
		$(function() {
			//chatingList.jsp에 들어오는 순간 웹 소켓에 접속하도록
			connect();
			//chatingList.jsp에 들어오는 순간 채팅 상대 리스트를 불러온다.
			selectChatList();
			
			//채팅 입력창(textArea 입력 이벤트)
			var chatInputEl = document.querySelector(".chat-textarea");
			chatInputEl.addEventListener('keydown',function(e){
				if(e.key == 'Enter'){
					//엔터 눌렀을 때, textArea에서 줄바꿈이 되는것을 방지하기 위해서 엔터 기능을 막음.
					e.preventDefault();
					//메세지 전송
					send();
				}
			});
			
		});
		//-------------------------페이지에 들어오는 순간 실행될 함수 끝----------------------------------------
		
		//-------------------------웹 소켓 관련 변수/함수 시작----------------------------------------
		var socket; //소켓담아놓을 변수 (접속과 종료 함수가 다르기 떄문에 전역변수에 담아두고 사용한다.)		
		
		//연결함수 (접속)
		function connect() {
			//접속경로를 담아 socket을 생성한다.
			//var url = "ws://192.168.50.40:8888/tinyfarm/basic"; 
			var url = "ws://localhost:8888/tinyfarm/basic";
			socket = new WebSocket(url);
			
			//연결이 되었을때
			socket.onopen = function() {
				console.log("연결 성공");
			};
			//연결이 종료됐을때
			socket.onclose = function() {
				console.log("연결 종료");
			};
			//에러가 발생했을때
			socket.onerror = function(e) {
				console.log("에러가 발생했습니다.");
				console.log(e);
			}
			//메세지가 왔을때
			socket.onmessage = function(message) {
				console.log("메세지가 도착했습니다.");
				var messageData = JSON.parse(message.data);

				var userId = "${loginUser.userId}";
				var createDate = $("<p class='createDate'></p>");
				createDate.text(new Date(messageData.createDate).toLocaleString());
				
				if (messageData.userId == userId) {
					var myDiv = $("<div class='myDiv'></div>");
					var myTextDiv = $("<div class='myTextDiv'></div>");
					
					myTextDiv.text(messageData.message);
					myDiv.append(createDate);
					myDiv.append(myTextDiv);
					$(".chat-area").append(myDiv);
				
				} else {
					var otherDiv = $("<div class='otherDiv'></div>");
					var otherTextDiv = $("<div class='otherTextDiv'></div>");
				
					otherTextDiv.text(messageData.message);
					otherDiv.append(otherTextDiv);
					otherDiv.append(createDate);
					$(".chat-area").append(otherDiv);
					
				}
				
				var chatRoomNo = messageData.chatRoomNo;

				// chat-list 클래스를 가진 요소들 중에서 후손 중 input 태그이고 id가 chatRoomNo이며 value가 chatRoomNoValue와 일치하는 요소를 찾습니다.
				var chatRoomNoEl = document.querySelectorAll('.chat-list input#chatRoomNo');
				
				console.log(chatRoomNoEl);
				
				chatRoomNoEl.forEach(function(chEl){
					console.log(chEl);
					if(chatRoomNo == chEl.value){
						$(chEl).siblings('.post-content').children("p").text(messageData.message);
					}
				});				
				
				//스크롤 최 하단으로 이동
				$('.chat-area')[0].scrollTop = $('.chat-area')[0].scrollHeight;
			
			}
		}

		//접속종료
		function disconnect() {
			socket.close();//소켓닫기
		}

		//메세지 전송
		function send() {
			var text = document.getElementsByClassName("chat-textarea")[0];
			if (text.value.trim().length == 0) {
				alert("채팅을 입력해주세요.");
				text.value = "";

			} else {
				const chatMessage = {
					"userId" : "${loginUser.userId}",
					"receiveId" : $(".chat-area>#userId").val(),
					"chatRoomNo" : $("#currentChatRoomNo").val(),
					"message" : text.value

				};
				
				socket.send(JSON.stringify(chatMessage));
								
				text.value = "";
			}			
		}
		//-------------------------웹 소켓 관련 변수/함수 끝----------------------------------------
		
		//-------------------------회원 찾기/찾은 회원으로 방 생성 관련 함수 시작----------------------------------------
		//db로부터 나를 제외한 회원을 찾고,찾은 값들을 find-id-div에 append하는 함수
		function findUser(){
			
			$.ajax({
				url : "findUser.ch",
				data : {
					search : $("#searchInput").val()
				},
				success : function(result){
					$(".find-id-div").empty();
					if(result == null){
						var findIdResultDiv = $("<div class='find-id-result-div'></div>");
						findIdResultDiv.text("채팅할 회원이 존재하지 않습니다.");
						$(".find-id-div").append(findIdResultDiv);
					}else {
						var userId = "${loginUser.userId}";
						for(var i=0;i<result.length;i++){
							if(userId != result[i].userId){
								
								var outDiv = $("<div class='single-latest-post d-flex align-items-center find-id-result-div'></div>");
								var profileDiv = $("<div class='post-thumb'></div>");
								var profile = $("<img class='other_profile_img'>");
								profile.attr('src',result[i].changeName);
								var nameDiv = $("<div class='post-content'>");
								
								nameDiv.append($("<p class='id'></p>").text("아이디 : "+result[i].userId));
								
								nameDiv.append($("<p class='name'></p>").text("이름 : "+result[i].userName));
							
								nameDiv.append($("<p class='date'></p>").text("가입일 : "+result[i].enrollDate));
								
								profileDiv.append(profile);


								outDiv.append(profileDiv);
								outDiv.append(nameDiv);
	

								$(".find-id-div").append(outDiv);
							
								
							}
							
						}
					}
				},
				error : function(){
					console.log("통신 에러");
				}
			});
		}
		
		//나를 제외한 회원 리스트 중 하나를 클릭했을때 이벤트
		$(".find-id-div").on("click","div",function(){
			//아이디 : test1 이런식으로 p태그에 담겨있기 때문에 split으로 분리를 한 뒤에 가져옴.
			var receiveMemId = $(this).children().eq(0).text().split(" : ")[1];
			//가져온 아이디 값을 insertChatRoom 메소드(db에 채팅방을 추가하는 메소드)에 전달.
			insertChatRoom(receiveMemId);
			//모달창을 닫기 위해 회원 찾기 모달창에 있는 닫기버튼을 클릭
			$("#closeFindIdModalBtn").click();
		});
		
		//채팅방 추가 함수. 
		function insertChatRoom(receiveMemId){
			$.ajax({
				url : "insertChatRoom.ch",
				data : {
					receiveMemId : receiveMemId,
					firstMemId : "${loginUser.userId}"
				},
				success : function(result){
					
					if(result == "NNNNY"){ //채팅방 추가에 성공
						selectChatList();
					}else if(result == "NNNYY"){//이미 채팅방이 있으면
						alert("이미 채팅방이 존재합니다");
					} 
				},
				error : function(){
					
				}
			});
			
		}
		//-------------------------회원 찾기/찾은 회원으로 방 생성 관련 함수 끝----------------------------------------
		
		//-------------------------채팅방 리스트 관련 함수 시작----------------------------------------
		//db로부터 로그인 한 유저가 들어가있는 채팅방 리스트를 뽑아와서 div요소로 목록에 표현
		function selectChatList(){
			$.ajax({
				url : "selectChatList.ch",
				data : {
					userId : "${loginUser.userId}"
				},
				success : function(result){
					$(".chat-list").empty();
					var userId = "${loginUser.userId}";
					if(result.length == 0){
						var outDiv = $("<div class='no-chat-user'></div>");
						var inDiv = $("<div class='no-chat-user-in' style='margin:0 auto;' align='center'>");
						var icon = $("<img src='resources/img/icon/no-chat-icon.png' alt=''>");
						var bEl = $("<b></b>").text("채팅 대상이 존재하지 않습니다");					
						var h2El = $("<h4></h4>").append(bEl);
						
						inDiv.append(icon);
						inDiv.append(h2El);
						outDiv.append(inDiv);
						$(".chat-list").append(outDiv);
					}else{
						
						for(var i=0;i<result.length;i++){
							var outDiv = $("<div class='single-latest-post d-flex align-items-center chat-item-div'></div>");
							var profileDiv = $("<div class='post-thumb'></div>");
							var profile = $("<img class='other_profile_img'>");
							profile.attr('src',result[i].changeName);
							var nameDiv = $("<div class='post-content'>");
							var chatRoomNo = $("<input type='hidden' id='chatRoomNo'>").val(result[i].chatRoomNo);
							//로그인한 유저 말고 상대방의 이름을 적어야하기 떄문에 체크
							var name = $("<h7 class='chat-other-name-id'></h7>").append($("<b></b>").text(result[i].userName+"("+result[i].otherId+")")); //로그인한 아이디와 다르기때문에 상대아이디임. 상대아이디 넣기
							//아니라면 receiveMemId 넣기
							if(result[i].message != null){								
								var msg = $("<p class='message-p'></p>").text(result[i].message);
							} else {
								var msg = $("<p></p>").text("최근 채팅이 없습니다");
							}
							var hiddenUserId = $("<input type='hidden' id='userId'>").val(result[i].otherId);
							
							profileDiv.append(profile);
							nameDiv.append(name);
							nameDiv.append(msg);
							outDiv.append(profileDiv);
							outDiv.append(nameDiv);
							outDiv.append(chatRoomNo);
							outDiv.append(hiddenUserId);
							
							$(".chat-list").append(outDiv);
						}
					}
				},
				error : function(){
					console.log("통신 에러");
				} 
			});
		}
		
		//채팅리스트 안에 있는 채팅들 중 하나를 클릭했을 경우
		$(".chat-list").on("click",".chat-item-div",function(){
			var chatRoomNo = $(this).children("#chatRoomNo").val();
			var userNameId = $(this).find(".chat-other-name-id").text();
			var userId = $(this).find("#userId").val();
			
			chatMode();
			$("#currentChatRoomNo").val(chatRoomNo);
			$("#chat-part-name").text(userNameId);
			
			$(".chat-area").empty();
			var hiddenUserId = $("<input type='hidden' id='userId'>").val(userId);
			$(".chat-area").append(hiddenUserId);			
			selectChatMsg(chatRoomNo);
			
		});
		
		//채팅방을 눌렀을때 채팅모드로 전환하기 위한 함수
		function chatMode(){
			var chatDiv = document.querySelector(".chat-div");
			var notChatDiv = document.querySelector(".not-chat-div");
			chatDiv.classList.add("visible");
			notChatDiv.classList.remove("visible");
			notChatDiv.classList.add("hidden");
		}
		
		//채팅방 삭제 메핑주소로 이동
		function deleteRoom(){
			location.href = "deleteRoom.ch?chatRoomNo="+$("#currentChatRoomNo").val();
		}
		//-------------------------채팅방 리스트 관련 함수 끝----------------------------------------
		
		//-------------------------채팅메세지 관련 함수 시작----------------------------------------
		//CHAT_MESSAGE 테이블로부터 방 번호가 일치하는 메세지들을 가져온다. userId가 내 아이디랑 같다면 myDiv에 아니라면 otherDiv에
		function selectChatMsg(chatRoomNo){
			
			$.ajax({
				url : "selectChatMsg.ch",
				data : {
					chatRoomNo : chatRoomNo
				},
				success : function(result){
					
					var userId = "${loginUser.userId}";
					for(var i=0;i<result.length;i++){
						
						var createDate = $("<p class='createDate'></p>");
						createDate.text(new Date(result[i].createDate).toLocaleString());
						
						if (result[i].userId == userId) {
							var myDiv = $("<div class='myDiv'></div>");
							var myTextDiv = $("<div class='myTextDiv'></div>");
							
							myTextDiv.text(result[i].message);
							myDiv.append(createDate);
							myDiv.append(myTextDiv);
							$(".chat-area").append(myDiv);
						
						} else {
							var otherDiv = $("<div class='otherDiv'></div>");
							var otherTextDiv = $("<div class='otherTextDiv'></div>");
							
							
							otherTextDiv.text(result[i].message);
							otherDiv.append(otherTextDiv);
							otherDiv.append(createDate);
							$(".chat-area").append(otherDiv);
							
						}
						
					}
					//스크롤 최 하단으로 이동
					$('.chat-area')[0].scrollTop = $('.chat-area')[0].scrollHeight;

				},
				error : function(){
					
				}
			}); 
		}
		//-------------------------채팅메세지 관련 함수 끝----------------------------------------
		
		//----------------------------이모지 관련-----------------------------------------------
		//이모지 div 보이기
		function visibleEmojiDiv(){
			//만약 emoji-div가 visible 상태라면 -> 이모지 모드를 나가야함
			console.log($('.emoji-div').is(".visible"));
            if($('.emoji-div').is(".visible")){
            	outEmojiMode();
            }else { //만약 emoji-div가 hidden 상태라면 -> 이모지 모드에 돌입해야함
            	
            	//이모지 채우기 전에 비우기
    			 $.ajax({
    	            url: 'https://emoji-api.com/categories/smileys-emotion', // Emoji-One API 엔드포인트
    	            method: 'GET',
    	            data: {
    	            	access_key: '1bcb465e186959f84ebdaeca7fb2657584846377' // 여기에 발급받은 API 키를 입력
    	                
    	            	
    	            },
    	            success: function(response) {
    	            	
    	            	for(var i=0;i<response.length;i++){
    		            	//console.log(response[i].character);						
    		            	var rowDiv;
    		                if(i%8 ==0){
    		                	$('.emoji-div').append(rowDiv);
    		                	rowDiv = $("<div class='row'></div>");
    		                } else {
    			                // 이모지를 화면에 표시
    			                var emojiImage = $("<h1 class='emoji-item' style='width:50px; height:50px;'></h1>");
    			                $(emojiImage).text(response[i].character);
    			              	
    			                rowDiv.append(emojiImage);

    		                }
    		                
    		                
    	            	}
    	            	//이모지 입력 모드로 변경
    	            	emojiMode();
    	            },
    	            error: function(error) {
    	                console.log('API 호출 중 에러 발생:', error);
    	            }
    	        });
            }
			
			
		}
		
		//이모지 클릭시
		$('.emoji-div').on("click",".emoji-item",function(){
			//console.log($(this).text());
			var emoji = $(this).text();
			$('.chat-textarea').val($('.chat-textarea').val()+emoji);

		});
		
		//이모티콘 아이콘 클릭시 chat-area의 height 속성과 emoji-div의 visible을 변경하는 함수
		function emojiMode(){
			$('.emoji-div').removeClass("hidden");
            $('.emoji-div').addClass("visible");
            $('.chat-area').css('height','auto');
			$('.chat-area').css('min-height','350px');
		}
		function outEmojiMode(){
			$('.emoji-div').empty();
			$('.emoji-div').removeClass("visible");
            $('.emoji-div').addClass("hidden");
            $('.chat-area').css('height','75%');
			$('.chat-area').css('min-height','75%');
		}
	</script>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>