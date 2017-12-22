<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="ajax-container">
	

	<div class="row mb-xl" >
		<div class="col-md-6">
		<%-- 	<div class="testimonial testimonial-style-3">
			<div class="testimonial-author">
				<div class="testimonial-author-thumbnail">
					<img src="../upload/${snsVO.pic}" class="img-responsive img-circle" alt="" style= "width:45px;height:45px;">
				</div>
					<p><strong>${snsVO.id}</strong></p>
			</div>
		</div> --%>
		<input type ="hidden" value = "${loginVO.id }"/>
			<span class="img-thumbnail">
				<img alt="" class="img-responsive" src="../upload/SNS/${ snsVO.fileName }" style="height: 700px;"> <!--  DB 첨부 이미지 값 -->
			</span>
				<%-- <!-- <a href="#" class="btn btn-primary btn-icon"><i class="fa fa-external-link"></i>장바구니로!</a> -->
				
					<!--  버튼 누르면 db의 snsVO.like 값이 1씩 증가하되 1인 1회만 가능하게  -->
					<button type="button"  onclick="like('${snsVO.no}')" class="mb-xs mt-xs mr-xs btn btn-borders btn-info" style="width:70px"> 
						Like! &nbsp;<i class="fa fa-thumbs-up"></i>
					</button> --%>
						
		</div>

		<div class="col-md-6">

		
				<div class="testimonial testimonial-style-3">
			<div class="testimonial-author">
				<div class="testimonial-author-thumbnail">
					<img src="../upload/${snsVO.pic}" class="img-responsive img-circle" alt="" style= "width:45px;height:45px;">
				</div>
					<p><strong>${snsVO.id}</strong></p>
			</div>
		</div> 
			<div class="row">
				<div class="col-md-12">
					<div style = "width:400px;height:120px">${snsVO.content } </div>
				</div>			
			</div>	
			
			<div class="row">
				<div class="col-md-12">
					<div style = "width:400px;height:70px"><strong># ${snsVO.name } #${snsVO.bread } #${snsVO.cheese } #${snsVO.topping }<br/> #${snsVO.vegetable } #${snsVO.sauce }</strong> </div>
				</div>			
			</div>	
				 <div class="portfolio-info">
					<hr style = "border-top: 1px solid #2f2c2c;width:465px"/>
				<div class="row">
						<div class="col-md-3" align="left">
						<button type="button"  onclick="like('${snsVO.no}')" class="btn btn-borders btn-success mr-xs mb-sm" style="width:70px"> 
							Like! &nbsp;<i class="fa fa-thumbs-up"></i>
						</button>
						</div>
					<div class="col-md-9 center">
						 <ul>
							<li>
								<a href="#" data-tooltip data-original-title="Like"><i class="fa fa-heart"></i id="heart">${snsVO.like}</i></a>  <!--  좋아요 숫자  -->
							</li>
							<li>
								<i class="fa fa-calendar"></i> ${snsVO.regDate } <!--  등록일 DB값 -->
							</li>
					<c:choose>
       					<c:when test="${loginVO.id == snsVO.id}">
          
							<li>
								<button class="btn btn-borders btn-success mr-xs mb-sm" onclick="action('E', ${snsVO.no}, '${loginVO.id}')"><i class="fa fa-pencil"></i></button>
							</li>
							<li>
								<button class="btn btn-borders btn-success mr-xs mb-sm" onclick="action('D', ${snsVO.no})" ><i class="fa fa-trash-o"></i></button>		
							</li>
       				</c:when>
				</c:choose> 
						</ul>
					 
					</div>
				</div>
				<hr style = "border-top: 1px solid #2f2c2c;width:465px"/>	
			</div> 
						
			<div class="row" >
				<div class="col-md-12" style = "height:70px;">
				 		
							<input type="text" id="content" placeholder="댓글을 작성해주세요" style="width:70%"/>
        				
        						<span style="align-content:inherit; "><button type="button" id="btnReply" class="btn btn-3d btn-success mr-xs mb-sm" style="align-self: baseline;">comment</button></span>
        	</div>
        	</div>
		
		
			<div class="row">
				<div class="col-md-12">
	
        						
				 <div class="comment">
        							
        					<div id="listReply" >
        					<c:forEach items="${ repList }" var="repList">
							 	<div class="testimonial testimonial-style-3">
									
										<div class="testimonial-author" style= "height:60px">
											<div class="testimonial-author-thumbnail">
												<img src=" ../upload/${repList.pic}" class="img-responsive img-circle" alt="" style= "width:45px;height:45px;">
											</div>
												<p><strong>${repList.id }</strong></p>
											<span class="pull-right">
												<c:choose>
       												<c:when test="${loginVO.id == repList.id}">
														<span> <button onclick="repDel('D', ${repList.repNo})" class="btn btn-borders btn-success mr-xs mb-sm">삭제</button></span>
													</c:when>
												</c:choose>		
											</span>
												<p><strong>${repList.content }</strong>
										
										</div>
									</div> 
								</c:forEach>
							</div>	 
						</div>
					</div>			
	
								</div>
							</div>
						</div>
					</div>
    
    <script>
    $(document).ready(function() {
		
		$('#listReply').css("max-height","270px");
		$('#listReply').css("overflow","auto");
		$('#listReply').css("max-width","500px");
			
    	
    });
    
    
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
	
    