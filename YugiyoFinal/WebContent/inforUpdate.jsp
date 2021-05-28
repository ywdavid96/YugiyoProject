<%@page import="util.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
import="customer.model.Customer"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̿���</title>
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
		.infor{
			height: 300px;
			text-align:justify;
			margin-bottom:20px;
			margin-left:150px;
			background-color:white;
			box-sizing: border-box;
			border-radius:20px;
			width:80%;
			float:left;
			padding-bottom:30px;
			color:black;
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
			margin-top: 20px;
			width:70%;
			height: 200px;
			float: left;
			margin-left: 350px;
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
		.container{
		width:600px;
		margin:0 auto;
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
		h3{
		font-weight:lighter;
		}
		.head{
		background-color:#EC1616;
		border-radius:20px 20px 0 0 / 20px 20px 0 0;
		}
		p {
    	display: block;
   	 	margin-block-start: 0em;
   	 	margin-block-end: 0em;
   	 	margin-inline-start: 0px;
   	 	margin-inline-end: 0px;
		}
		input[type="text"]{
		width: 400px;
		height: 40px;
		border-radius:5px;
		border-color:black;
		margin-bottom:20px;
		font-size:25px;
		text-align:center;
		}
		input[type="submit"]{
		height: 45px;
		width: 550px;
		background-color: #848484;
		border-color:white;
		color:white;
		border:none;
		padding-left:10px;
		padding-right:10px;
		}
	</style>

</head>
<body>
	
<header class="login">
		<%
			if (session.getAttribute("id") == null) // �α����� �ȵǾ��� ��
			{
		%>

		<nav>
			<ul>
				<a href="index.jsp" style="margin-right: 600px;"><img
					src="image/logo1.png" width="7%"></a>
				<li><button id="join">
						<a href="loginform.jsp">�α���</a>
					</button></li>
				<li><button id="join">
						<a href="registerform.jsp">ȸ������</a>
					</button></li>
				<li><button id="join"
						style="background: #FD7200; width: 150px; margin-right: 400px;">
						<a href="#">�ֹ�ǥ</a>
					</button></li>
			</ul>
		</nav>

		<%
			} else { // �α��� ���� ���
		%>

		<nav>
			<ul>
				<a href="index.jsp" style="margin-right: 600px;"><img
					src="image/logo1.png" width="7%"></a>
					<li><%=session.getAttribute("id") %> �� ȯ���մϴ�.
					</li>
				<li><button id="join">
						<a href="logoutProc.jsp">�α׾ƿ�</a>
					</button></li>
				<li><button id="join">
						<a href="inforUpdate.jsp">�� ��������</a>
					</button></li>
				<li><button id="join"
						style="background: #FD7200; width: 150px; margin-right: 400px;">
						<a href="#">�ֹ�ǥ</a>
					</button></li>
			</ul>
		</nav>
		<%
			}
		%>






	</header>
<div class="clear"></div>
<%	
	String id = (String)session.getAttribute("id");
	
	String sql ="Select * from customer WHERE CustomerId =?";


	Connection conn = null;
	conn = DBConnection.getConnection();

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = null;

	pstmt.setString(1, id);
	rs = pstmt.executeQuery();

	
%>
<%
	while(rs.next()){
%>
<div class="container">
		<h3>ȸ�� ���� ����</h3>
			<form action="customerUpdate.do" method="get">
			&nbsp;���̵�&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" readonly value=<%= rs.getString(1) %> name="CustomerId"><br>
			��й�ȣ : <input type="text" value=<%= rs.getString(2) %> name="password"><br>
			&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" value=<%= rs.getString(3) %> name="name"><br>
			��ȭ��ȣ : <input type="text" value=<%= rs.getString(4) %> name="tel"><br>
			&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" value=<%= rs.getString(5) %> name="address"><br>
			<br><br><br><br><br><br><input type="submit" value="���� ����"><br>
			</form><br><br><br><br><br>
			</div>
	<%
	}
rs.close();
  %>
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