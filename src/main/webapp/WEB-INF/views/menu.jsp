<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<nav class="navbar navbar-default">
	<div class="container">
		<ul class="nav navbar-nav">
			<li style="margin-left:50px;"><a href="home">����</a></li> 
			<li><a href="main?pageNum=1">�����Խ���</a></li>
<!-- 			<li><a href="chart">���</a></li>  -->
			
                  <!-- �α��μ��� -->  
				 <c:if test="${sessionScope.am_id eq null}">
				    <li style="margin-left:700px;"> 
                		<a href="joinForm">ȸ������</a>
              	 	 </li> 
					<li>	
                	<a href="loginForm">�α���</a>
               		</li>
				 </c:if>	 
	 			 <c:if test="${sessionScope.am_id ne null}">	
            	 	 <li style="margin-left:600px;">
                	  	<a href="#">${sessionScope.am_name}(${sessionScope.am_id})�� �ݰ����ϴ�.</a> 
               		 </li>
               	<li>   
                	<a href="logout">�α׾ƿ�</a>
                </li>
                </c:if>  
                <!-- �α��μ��� -->
			
			
<!-- 			<li><a href="loginForm">�α���</a></li>  -->
<!-- 			<li><a href="joinForm">ȸ������</a></li>	 -->
<%-- 			<li><a href="#">${sessionScope.am_name }�� ȯ���մϴ�!</a></li>	 --%>
<!-- 			<li><a href="logout">�α׾ƿ�</a></li>  -->
		</ul>
	</div>
</nav>  