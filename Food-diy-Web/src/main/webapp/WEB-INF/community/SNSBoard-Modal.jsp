<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ajax-container">
	<div class="row">
		<div class="col-md-12">
			<div class="portfolio-title">
				<div class="row">
					<div class="portfolio-nav-all col-md-1">
						<a href="#" data-ajax-portfolio-close data-tooltip data-original-title="Close"><i class="fa fa-th"></i></a>
					</div>
					<div class="col-md-10 center">
						<h2 class="mb-none">${snsVO.title }<!--  DB 제목값 --></h2>
					</div>
					<div class="portfolio-nav col-md-1">
						<a href="#" data-ajax-portfolio-prev class="portfolio-nav-prev" data-tooltip data-original-title="Previous"><i class="fa fa-chevron-left"></i></a>
						<a href="#" data-ajax-portfolio-next class="portfolio-nav-next" data-tooltip data-original-title="Next"><i class="fa fa-chevron-right"></i></a>
					</div>
				</div>
			</div>

			<hr class="tall">
		</div>
	</div>

	<div class="row mb-xl">
		<div class="col-md-4">

			<span class="img-thumbnail">
				<img alt="" class="img-responsive" src="../upload/${ snsVO.fileName }"> <!--  DB 첨부 이미지 값 -->
			</span>
				<a href="#" class="btn btn-primary btn-icon"><i class="fa fa-external-link"></i>장바구니로!</a>
				
					<!--  버튼 누르면 db의 snsVO.like 값이 1씩 증가하되 1인 1회만 가능하게  -->
					<button type="button"  onclick="like('${snsVO.no}')" class="mb-xs mt-xs mr-xs btn btn-borders btn-info"> 
						<i class="fa fa-thumbs-up"></i>
					</button>
		
		</div>

		<div class="col-md-8">

			<div class="portfolio-info">
				<div class="row">
					<div class="col-md-12 center">
						<ul>
							<li>
								<a href="#" data-tooltip data-original-title="Like"><i class="fa fa-heart"></i id="heart">${snsVO.like}</i></a>  <!--  좋아요 숫자  -->
							</li>
							<li>
								<i class="fa fa-calendar"></i> ${snsVO.regDate } <!--  등록일 DB값 -->
							</li>
						
						</ul>
					</div>
				</div>
			</div>
				<div class="testimonial testimonial-style-3">
							
					
						<div class="testimonial-author">
							<div class="testimonial-author-thumbnail">
								<img src="${ pageContext.request.contextPath }/resources/img/clients/client-1.png" class="img-responsive img-circle" alt="">
							</div>
								<p><strong>${loginVO.id}</strong></p>
						</div>
					</div>

						<p class="mt-xlg">${snsVO.content }<!--  DB 내용 값 --></p>
							
								<div class = "row">
									<table class="table">  <!--  DB에서 재료정보 받아오는 테이블  -->
										<thead>
											<tr>
												<th>
													메뉴 이름
												</th>
												<th>
													추가재료 
												</th>
												<th>
													소스
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													이탈리안 BMT
												</td>
												<td>
													에그마요 추가 , 더블미트 추가  할라피뇨 - 
												</td>
												<td>
													렌치, 핫칠리
												</td>
												
											</tr>
											
										</tbody>
									</table>
								
								
								</div>
							<div class="comment">
							<input type="text" id="replytext" placeholder="댓글을 작성해주세요" style="width:80%"/>
        				
        						<button type="button" id="btnReply">댓글 작성</button>
        							<div id="listReply"></div>
        							
        						
								<div class="testimonial testimonial-style-3">
									
										<div class="testimonial-author">
											<div class="testimonial-author-thumbnail">
												<img src="${ pageContext.request.contextPath}/resources/img/clients/client-10.jpg" class="img-responsive img-circle" alt="">
											</div>
												<p><strong>kkiceama</strong></p>
											<span class="pull-right">
												<span> <a href="#"><i class="fa fa-reply"></i>Update</a></span>
											</span>
												<p><strong>맛있게 잘 먹었어요~~</strong>
											<span class="date pull-right">November 12, 2017 at 1:38 pm</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
    
	<script>
	function like(no){
			
			var btn = this;
			var no = no;
			
			$.ajax({
					url : "./like",
					type : "post",
					data : {"no" : no},
					success : function(responseData){
						var data = JSON.parse(responseData);
							alert("좋아요가 완료되었습니다.!");
							alert(data.like);
							
							var contents = '';
							contents +=  data.like;
							
							$('#heart').html(" 좋아요:" +data.like );
			    
						    } 
					});    
			}
	
	
	// ** 댓글 쓰기 버튼 클릭 이벤트 (ajax로 처리)
	 $("#btnReply").click(function(){
         var replytext=$("#replytext").val();
         var bno="${dto.bno}"
         var param="replytext="+replytext+"&bno="+bno;
         $.ajax({                
             type: "post",
             url: "${path}/reply/insert.do",
             data: param,
             success: function(){
                 alert("댓글이 등록되었습니다.");
                 listReply2();
             }
         });
     });
	 // Controller방식
	    // **댓글 목록1
	    function listReply(){
	        $.ajax({
	            type: "get",
	            url: "${path}/reply/list.do?bno=${dto.bno}",
	            success: function(result){
	            // responseText가 result에 저장됨.
	                $("#listReply").html(result);
	            }
	        });
	    }
	    // RestController방식 (Json)
	    // **댓글 목록2 (json)
	    function listReply2(){
	        $.ajax({
	            type: "get",
	            //contentType: "application/json", ==> 생략가능(RestController이기때문에 가능)
	            url: "${path}/reply/listJson.do?bno=${dto.bno}",
	            success: function(result){
	                console.log(result);
	                var output = "<table>";
	                for(var i in result){
	                    output += "<tr>";
	                    output += "<td>"+result[i].userName;
	                    output += "("+changeDate(result[i].regdate)+")<br>";
	                    output += result[i].replytext+"</td>";
	                    output += "<tr>";
	                }
	                output += "</table>";
	                $("#listReply").html(output);
	            }
	        });
	    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>
	
    