<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" />
</head>

<body> 
	<jsp:include page="menu.jsp" />
	<form action="login_check" method="post">
	<div class="container" align="center">
		<div align="left"
			style="padding: 30px; width: 500px; border: 1px solid #cccccc; background-color: WHITE; margin-bottom : 99px;">
			<h3>�α���</h3>
			<hr />

			<div class="form-inline">
				<label style="width: 80px">���̵�</label> 
				<input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="���̵� �Է��ϼ���." /> 
			</div>

			<div class="form-inline" style="margin-top: 5px">
				<label style="width: 80px">��ȣ</label> 
				<input type="password" class="form-control" id="mem_pw" name="mem_pw" placeholder="��ȣ�� �Է��ϼ���." />
			</div>

			<hr />

			<div align="center">
				<input type="submit" class="btn btn-success" id="btn_login" value="�α���" /> 
				<a href="joinForm" ><input type="button" class="btn btn-primary" value="ȸ������" /></a>
			</div>
		</div>
	</div>
	</form>
	<jsp:include page="footer.jsp" />
</body>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
  <script type="text/javascript">
$(document).ready(function(){
	
	//id="btn_join"�� �±׸� ã�Ƽ� Ŭ���Ǹ�
	$('#btn_login').click(function(){
		var id = $('#mem_id').val();
		if(id == ''){
		alert('���̵� �Է��ϼ���.');
		$('#mem_id').focus(); //�̸� �Է�ĭ���� focus�̵���.
		return false; //servlet�� ���� �������� ����.
	}
		var pw = $('#mem_pw').val();
		if(pw == ''){
		alert('��й�ȣ�� �Է��ϼ���.');
		$('#mem_pw').focus(); //�̸� �Է�ĭ���� focus�̵���.
		return false; //servlet�� ���� �������� ����.
	}

	});
});	
</script>

</html>






