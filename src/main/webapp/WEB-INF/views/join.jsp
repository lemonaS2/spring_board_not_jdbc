<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="menu.jsp" />  
	<form action="insertJoin" method="post">
		<div class="container" align="center">
			<div align="left"
				style="width: 500px; border: 1px solid #eeeeee; padding: 20px; background-color: WHITE; margin-bottom : 99px;">
				<h3>ȸ������</h3>
				<hr />

				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 120px">���̵�</label> 
					<input type="text" id="mem_id" name="mem_id" style="width: 240px" class="form-control" placeholder="���̵� �Է�" required/> 
					<label id="output" style="color:light-gray;">�ߺ�Ȯ��</label>
<!-- 					<a href="joinCheck"><input type="button" style="width: 80px" class="btn btn-info btn-sm" value="�ߺ�Ȯ��"></a> -->
				</div>
  
 				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 120px">��ȣ</label> <input type="password" id="mem_pw"
						name="mem_pw" style="width: 300px" class="form-control"
						placeholder="��ȣ �Է�" required />
				</div>
 
				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 120px">��ȣ ���Է�</label> <input type="password" id="mem_pw1"
						style="width: 300px" class="form-control"
						placeholder="��ȣ ���Է�" required />
				</div>
 
				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 120px">�̸�</label> <input type="text" id="mem_name"
						name="mem_name" style="width: 300px" class="form-control"
						placeholder="�̸� �Է�" required />
				</div>

				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 120px">�̸���</label> 
					<input type="text" id="mem_email" name="mem_email" style="width: 300px" class="form-control" placeholder="�̸��� �Է�" required />
				</div>

				<hr />

				<div class="form-inline" style="margin-bottom: 10px" align="center">
					<input type="submit" id="btn_join" class="btn btn-success" value="ȸ������" /> 
					<a href="home" ><input type="button" class="btn btn-primary" value="�ڷΰ���" /></a>
				</div>
 
			</div>
		</div>
	</form>
	<jsp:include page="footer.jsp" />
	
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//id="btn_join"�� �±׸� ã�Ƽ� Ŭ���Ǹ�
		$('#btn_join').click(function(){
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
			var pwd = $('#mem_pw1').val();
			if(pwd == ''){
			alert('��й�ȣ�� �ٽ� �Է��ϼ���.');
			$('#mem_pw1').focus(); //�̸� �Է�ĭ���� focus�̵���.
			return false; //servlet�� ���� �������� ����.
		}
			var na = $('#mem_name').val();
			if(na == ''){
			alert('�̸��� �Է��ϼ���.');
			$('#mem_name').focus(); //�̸� �Է�ĭ���� focus�̵���.
			return false; //servlet�� ���� �������� ����.
		}
			var em = $('#mem_email').val();
			if(em == ''){
			alert('�̸����� �Է��ϼ���.');
			$('#mem_email').focus(); //�̸� �Է�ĭ���� focus�̵���.
			return false; //servlet�� ���� �������� ����.
		}
			
			var pw = $('#mem_pw').val();
			var pw1 = $('#mem_pw1').val();
			if(pw != pw1){
				alert('��й�ȣ�� ���� �ʽ��ϴ�.');
				$('#mem_pw').focus(); //�̸� �Է�ĭ���� focus�̵���.
			return false; //servlet�� ���� �������� ����.
			}
		});
		
		$('#mem_id').keyup(function(){
			var a = $('#mem_id').val();
			if(a.length > 0){
			$.post("app_checkid", {"mem_id": a }, function(data){
					//{"ret":"y"} or {"ret": "n"}	
				if(data.ret == 'y'){
						$('#output').html('<font color="red">���Ұ�</font>');
					}
				else if(data.ret == 'n'){
						$('#output').html('<font color="blue">��밡��</font>');
					}	
				}, "json");
			} 
			else{
				$('#output').text('�ߺ�Ȯ��');
			}
		});
		
	});	
</script>
</body>

</html>