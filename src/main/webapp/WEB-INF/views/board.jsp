<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�����Խ���</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<style>
	.mycontainer {
		margin: 0px auto;
		padding: 30px; 
		width: 1000px;
		height :600px;
		border: 1px solid #cccccc;
		background-color: WHITE;
	}
	 
     th,td {
        text-align: center;
     }

</style>
</head>
<body> 
  
	<div class="mycontainer"> 
		<h4>�Խñ� ���(${totalBoardCount })</h4>
		   
		<form action="searchAll" method="post">
			<div class="form-inline" align="center"
				style="margin-top: 10px; margin-bottom: 40px;">
				<select id="option" name="option" class="form-control">
					<option value="all">��ü</option> 
					<option value="b_num">��ȣ</option> 
					<option value="b_title">����</option>  
					<option value="b_writer">�ۼ���</option> 
				</select>   
				<input type="text" class="form-control" name="search_desc" placeholder="�˻�� �Է��ϼ���." />
				<input type="submit" class="btn btn-success" value="�˻�"/> 
				
	 			 <c:if test="${sessionScope.am_id ne null}">	
            	 	 <a href="insertBoard"><input type="button" class="btn btn-info" value="�۾���"></a>
                </c:if>  
                
			</div>
		</form> 
	   
		<table class="table">
			<tr class="active">
				<th align="center">��ȣ</th>
				<th align="center">����</th>
				<th align="center">�ۼ���</th> 
				<th align="center">�ۼ�����</th> 
				<th align="center">��ȸ��</th> 
				<th align="center">���</th> 
			</tr>  
		<c:choose>
			<c:when test="${empty list }"> 
				<tr>
					<td colspan="6"><h4>������ �������� �ʽ��ϴ�.</h4></td>				
				</tr> 
			</c:when> 
			
			<c:otherwise>
				<c:forEach var="board" items="${list }">
					<tr> 
						<td>${board.b_num }</td> 
						<td>${board.b_title }</td>
						<td>${board.b_writer }</td>
						<td>${board.b_reg }</td> 
						<td>${board.b_hit }</td> 
						<td> 
							<a href="showDetail?b_num=${board.b_num}"><input type="button" class="btn btn-primary btn-xs" value="�󼼺���"></a>
						</td> 
					</tr>  
				</c:forEach> 
			</c:otherwise>
		</c:choose>
		</table> 
		
		</div> 
			<div align="center">
				<ul class="pagination">
					<li><a href="#" aria-labe="Previous"> 
						<span aria-hidden="true">&laquo;</span>
					</a></li>
						<c:forEach var="i" begin="1" end="${pageCount}" step="1">
							<c:choose>
								<c:when test="${pageNum != i }">
									<li><a href="main?pageNum=${i}" ><b>${i}</b></a></li>
								</c:when> 
								  
								<c:otherwise>    
								<li><a href="main?pageNum=${i}"><b>${i}</b></a></li>	 
								</c:otherwise>
							</c:choose> 
						</c:forEach> 
					
					<li><a href="#" aria-labe="Previous"> 
					<span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
</body> 
<script> 
</script>
</html>