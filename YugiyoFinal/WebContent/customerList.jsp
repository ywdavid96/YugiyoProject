<%@ page language="java" contentType="text/html; charset=EUC-KR"
	import = "java.sql.ResultSet"
	import = "java.sql.Statement"
	import = "java.sql.Connection"
	import = "java.sql.DriverManager"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ȩ ȭ��</title>
	<style>
		body{
			background:#F2F2F2;
		}
		#join {
			margin-top: 10px;
			margin-bottom: 10px;
			width:100px;
			height:50px;
			color: white;
			background:#EC1616;
			border:1px white outset;
			font-size:1.0em;
		}
		.login{
			background:#EC1616;
			text-align: right;
			font-size: 15px;
			z-index: 1;
		}
		.news{
			text-align: center;
			font-size: 15px;
			z-index: 1;
			border:1px solid;
			border-color: #cccccc;
		}
		.Brandimage{
			width: 100%;
			height:180px;
			float: left;
			margin-left: 650px;
		}
		.backimage{
		background-image:url('image/back.png');
		background-repeat:no-repeat;
		background-size:cover;
		}
		section{
			margin-top: 100px;
			width:70%;
			height: 200px;
			float: left;
			margin-left: 350px;
			margin-bottom: 200px;
		}
		article{
			width:20%;
			height: 100%;
			margin-left: 10px;
			border:solid 1px #cccccc;
			float: left;
		}
		.clear{
			clear: both;
		}
		footer{
			border:1px solid;
			border-color: #cccccc;
			padding:10px;
			padding-right: 50px;
			color: black;
			text-align: right;
			font-size: 12px;

		}
		ul{
			list-style-type: none;
		}
		ul li{
			display: inline;
			text-align: right;
		}
		ul li a{
			color:white;
			text-decoration: none;
		}
		.news ul li a{
			color:#848484;
		}
		input[type="text"]{
		width: 400px;
		height: 40px;
		border-radius:5px;
		border-color:white;
		}
		input[type="submit"]{
		height: 45px;
		background-color: orange;
		border-radius:5px;
		border-color:white;
		color:white;
		border:none;
		padding-left:10px;
		padding-right:10px;
		}
		h3{
		text-align:center;
		font-weight:lighter;
		color:white;
		}
		h1{
		font-family:'����';
		padding-top:100px;
		text-align:center;
		color:white;
		}
		h2{
		font-family:'����';
		padding-top:100px;
		text-align:center;
		color:black;
		}
		table{
		background-color:white;
		}
	</style>

</head>
<body>
	
<header class="login">
	<nav>
	<ul>
		<a href="index.jsp" style="margin-right:600px;"><img src="image/logo1.png" width="7%"></a>
		<li><button id="join"><a href="index.jsp">�α׾ƿ�</a></button></li>
		<li><button id="join"><a href="myinfor.jsp">���� ����</a></button></li>
		<li><button id="join" style="background:#FD7200; width:150px; margin-right:400px;"><a href="#">�ֹ�ǥ</a></button></li>
	</ul>
	</nav>
</header>
<div class="clear"></div>
<div class="backimage" style="height:300px;">
<h1>"���� <span style="color:orange;">���</span> �ص帱���?"</h1>
<h3>��� ������  �� �̸��� �˻����ּ���.</h3>
<input type="text" style="margin-left:725px; margin-top:0px;">
<input type="submit" value="�˻�">
</div>
<div class="clear"></div>
<div class="body">
<h2> ȸ�����</h2>
<table width = "50%" border = "1" align="center">
	<tr>
            <td>���̵�</td>
            <td>�н�����</td>
            <td>�̸�</td>
            <td>��ȭ��ȣ</td>
      </tr>
<% 

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null; // DBMS�� Java���ᰴü
	Statement stmt = null; // SQL������ ����
	ResultSet rs = null; // SQL������ �������� ����


	conn = DriverManager.getConnection("jdbc:mysql://localhost/yugiyo?serverTimezone=UTC","root","cs1234");
	stmt = conn.createStatement();
	rs = stmt.executeQuery("select CustomerId,password,name,tel from customer");
	
	while(rs.next())
	{
	%>
	 <tr>
     <td><%= rs.getString("CustomerId") %></td>
     <td><%= rs.getString("password") %></td>
     <td><%= rs.getString("name") %></td>
     <td><%= rs.getString("tel") %></td>
	</tr>
	
	<%
	}
	rs.close();
	stmt.close();
	conn.close();
	%>
	</table>
	<form action="loginadmin.jsp" method="post">
	<input type="submit" value="����������" style="margin-top:50px; margin-bottom:50px; margin-left:900px;">
	</form>
</div>
<div class="clear"></div>
<header class="news">
	<nav>
	<ul>
		<li><a href="#">�̿��� |</a></li>
		<li><a href="#"> �������� ó����ħ |</a></li>
		<li><a href="#"> ���ո������å |</a></li>
		<li><a href="#"> ȸ��Ұ� |</a></li>
		<li><a href="#"> ��������� |</a></li>
		<li><a href="#"> ��������</a></li>
		<li><a href="#"> ��������</a></li>
	</ul>
	</nav>
</header>
<footer>
	<p style="font-weight:bold; font-size:15px;">(����)������������� ���Ϲ���Ƽ.</P>
	<P>���ν� ó�α� ���δ��з� 134 ���δ��б� ��.17092 TEL: 031-8020-3114 FAX: 031-332-6479</p>
	<p>����Ǹž��Ű�:�� 2018-���Ｍ��-2635ȣ|������������� : privacy@yogiyo.co.kr|���޹��� : partnership@deliveryhero.co.kr|���������� : support@yogiyo.co.kr|ȣ��Ʈ���񽺻���� : (��)���÷������ͳ�</p>
</footer>
</body>
</html>