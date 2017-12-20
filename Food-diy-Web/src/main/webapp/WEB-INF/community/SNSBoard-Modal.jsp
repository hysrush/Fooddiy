<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<input type ="hidden" value = "${loginVO.id }"/>
			<span class="img-thumbnail">
				<img alt="" class="img-responsive" src="../upload/SNS/${ snsVO.fileName }"> <!--  DB 첨부 이미지 값 -->
			</span>
				<a href="#" class="btn btn-primary btn-icon"><i class="fa fa-external-link"></i>장바구니로!</a>
				
					<!--  버튼 누르면 db의 snsVO.like 값이 1씩 증가하되 1인 1회만 가능하게  -->
					<button type="button"  onclick="like('${snsVO.no}')" class="mb-xs mt-xs mr-xs btn btn-borders btn-info" style="width:100px"> 
						<i class="fa fa-thumbs-up"></i>
					</button>
						
			 	<c:choose>
       				<c:when test="${loginVO.id == snsVO.id}">
          
					<input type="button" class="btn btn-primary"  onclick="action('E', ${snsVO.no}, '${loginVO.id}')" value="수정"/>
					<input type="button" class="btn btn-primary"  onclick="action('D', ${snsVO.no})" value="삭제"/>		
       				</c:when>
				</c:choose> 
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
								<img src="../upload/${snsVO.pic}" class="img-responsive img-circle" alt="">
							</div>
								<p><strong>${snsVO.id}</strong></p>
						</div>
					</div>

						<p class="mt-xlg">${snsVO.content }<!--  DB 내용 값 --></p>
							
								<div class = "row">
									<table class="table">  <!--  DB에서 재료정보 받아오는 테이블  -->
										<tbody>
																
										  <tr>
					                        <td width="15%"><strong> 메뉴이름</strong></td>
					                        <td>${snsVO.name}</td>
					                      </tr>                 
					                      <tr>
					                      	<td><strong>빵 </strong></td>
					                        <td>${snsVO.bread}</td>
					                      </tr>
					                      <tr>
					                       	<td><strong>야채, 토핑 </strong></td>
					                        <td>야채 : ${ snsVO.vegetable }<br/>
					                        	 토핑: ${snsVO.topping }</td>
					                      </tr>
					                      <tr>
					                        <td><strong>소스</strong></td>
					                        <td>${snsVO.sauce }</td>
										</tbody>
									</table>
								</div>
							<div class="comment">
							<input type="text" id="content" placeholder="댓글을 작성해주세요" style="width:80%"/>
        				
        						<button type="button" id="btnReply">댓글 작성</button>
        						
        							
        					<c:forEach items="${ repList }" var="repList">
        					<div id="listReply">
							 	<div class="testimonial testimonial-style-3">
									
										<div class="testimonial-author">
											<div class="testimonial-author-thumbnail">
												<img src=" ../upload/${repList.pic}" class="img-responsive img-circle" alt="">
											</div>
												<p><strong>${repList.id }</strong></p>
											<span class="pull-right">
												<c:choose>
       												<c:when test="${loginVO.id == repList.id}">
														<span> <button onclick="repDel('D', ${repList.repNo})"><i class="fa fa-reply"></i>삭제</button></span>
													</c:when>
												</c:choose>		
											</span>
												<p><strong>${repList.content }</strong>
											<span class="date pull-right">${repList.regDate }</span>
										</div>
									</div> 
								</div>	
								</c:forEach>
									<div class="col-md-12">
														<ul class="pagination">
														
															<!-- 이전 페이지 이동  -->
															<li><a onclick='pagePre(${p.pageStartNum},${p.pageCnt});'><i class="fa fa-chevron-left"></i></a></li>
														
															<!--  페이지 번호  -->
														<c:forEach var='i' begin ="${p.pageStartNum }" end = "${p.pageLastNum}" step="1">
															<li class='pageIndex$[i]'><a onclick="pageIndex(${i});">${i}</a></li>
														</c:forEach>
															<!-- 다음 페이지 이동 -->
															
															  <li><a onclick='pageNext(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'><i class="fa fa-chevron-right"></i></a></li>
														</ul>
														
															 <form action="./snsDetail.do" method="post" id='frmPaging'>
													            <!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
													            <input type='hidden' name='index' id='index' value='${p.index}'>
													            <input type='hidden' name='pageStartNum' id='pageStartNum' value='${p.pageStartNum}'>
													            <input type='hidden' name='listCnt' id='listCnt' value='${p.listCnt}'>    
													        </form>
													</div>	
													
														
								
								
								</div>
							</div>
						</div>
					</div>
    
    <script>
	function action(type, no,id) {
		switch (type) {
		case 'E':
			location.href = '${ pageContext.request.contextPath}/community/snsModifyForm.do?no='+no +'&id='+ id;
			break;
		case 'D':
			location.href = '${ pageContext.request.contextPath}/community/deleteSns.do?no=' + no;
			break;
		default:
			break;
		}
    }
	
	function repDel(type, no) {
		switch (type) {
		case 'D':
			location.href = '${ pageContext.request.contextPath}/community/deleteRep.do?no=' +no;
			break;
		default:
			break;
		}
    }
	
	
	
	
	// 삭제 alert창
	
    
    </script>
    
    
    
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
         var content=$("#content").val();
         var snsNo="${snsVO.no}"
         alert(content + "  " + snsNo);
         
         $.ajax({                
             type: "post",
             url: "./insertRep",
             data: {"snsNo": snsNo , "content":content},
             success: function(responseData){
            	var data = JSON.parse(responseData);
            		
            	
                 alert("댓글이 등록되었습니다.");
                  
          		       var contents = '';
          		       
          		        contents += '<div class="testimonial testimonial-style-3">';
          		       contents += '<div class="testimonial-author">';	
                 	   contents += 	'<div class ="testimonial-author-thumbnail">';
                 	   contents +=		'<img src = "../upload/"\''+data.snsRepVO.pic+'\'" class ="img-responsive img-circle" alt="">';
                 	   contents +=	'<div>';
                 	   contents +=		'<p><strong>'+ data.snsRepVO.id+'</storong></p>';
                 	   contents +=	'<span class="pull-right">';
                 	   contents +=		'<span><a href="#"><i class="fa fa-reply"><i>Update</a></span>';
                 	   contents +=	'</span>';
                 	   contents +=		'<p><strong>' + data.snsRepVO.content + '</strong></p>';
                 	   contents +=		'<span class="date pull-right">' +data.snsRepVO.regDate+'</span>';
                 	   contents +=	'</div>';
                 	   contents +='</div>';
                 		 
                 	   //contents += '<span>안녕하세요</span>';
                 	
                 	   
                 	$('#listReply').append(contents); 
                 
             }
         });
     });
	
	</script>
	
	<script>
			function frmPaging() {
			    document.getElementById("frmPaging").submit();
			}
			// 이전 페이지 index
			function pagePre(index, pageCnt) {
			    if (0 < index - pageCnt) {
			        index -= pageCnt;
			        document.getElementById("pageStartNum").value = index;
			        document.getElementById("index").value = index - 1;
			        frmPaging();
			    }
			}
			// 다음 페이지 index
			function pageNext(index, total, listCnt, pageCnt) {
			    var totalPageCnt = Math.ceil(total / listCnt);
			    var max = Math.ceil(totalPageCnt / pageCnt);
			    if (max * pageCnt > index + pageCnt) {
			        index += pageCnt;
			        document.getElementById("pageStartNum").value = index;
			        document.getElementById("index").value = index - 1;
			        frmPaging();
			    }
			}
			
			// index 리스트 처리
			function pageIndex(pageStartNum) {
			    document.getElementById("index").value = pageStartNum - 1;
			    frmPaging();
			}
			// 리스트출력개수 처리
			function listCnt() {
			    document.getElementById("index").value = 0;
			    document.getElementById("pageStartNum").value = 1;
			    document.getElementById("listCnt").value = document.getElementById("listCount").value;
			    frmPaging();
			}
			window.onload = function() {
			    // 현재번호 active
			    var index = document.getElementById("index").value;
			    var pageIndex = document.querySelector('.pageIndex'+(Number(index)+1));
			   
			    // 리스트갯수 selected 처리
			    $("#listCount > option").each(function () {
			        if ($(this).val() == $('#listCnt').val()) {
			            $(this).prop("selected", true);
			        }
			    });
			}


			</script>	
	
    