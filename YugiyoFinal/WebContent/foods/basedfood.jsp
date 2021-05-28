<%@page import="java.sql.ResultSet"%>
<%@page import="shop.service.ShopService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<style>
body {
	background: #F2F2F2;
}
table {
	margin-left:350px;
	height:300px;
	width:800px;
	margin-top:50px;
	margin-bottom:50px;

}
tr	{
	text-align:center;

}
thead	{
background-color:#ccddee;
}
tfoot	{
background-color:#ccddee;
}
#join {
	margin-top: 10px;
	margin-bottom: 10px;
	width: 100px;
	height: 50px;
	color: white;
	background: #EC1616;
	border: 1px white outset;
	font-size: 1.0em;
}

.Brand {
	border-bottom: 1px solid;
	border-color: #black;
	margin-bottom: 20px;
	font-size: 20px;
	padding-right: 100px;
	text-align: left;
	margin-right: 50px;
	background-color: white;
}

.login {
	background: #EC1616;
	text-align: right;
	font-size: 15px;
	z-index: 1;
}

.news {
	text-align: center;
	font-size: 15px;
	z-index: 1;
	border: 1px solid;
	border-color: #cccccc;
}

.Brandimage {
	width: 100%;
	height: 180px;
	float: left;
	margin-left: 650px;
}


.backimage {
	background-image: url('image/back.png');
	background-repeat: no-repeat;
	background-size: cover;
}

section {
	margin-top: 20px;
	width: 70%;
	height: 150px;
	float: left;
	margin-left: 350px;
}

article {
	width: 40%;
	height: 100%;
	margin-left: 20px;
	border: solid 1px #cccccc;
	float: left;
}

.clear {
	clear: both;
}

footer {
	border: 1px solid;
	border-color: #cccccc;
	padding: 10px;
	padding-right: 50px;
	color: black;
	text-align: right;
	font-size: 12px;
}

ul {
	list-style-type: none;
}

ul li {
	display: inline;
	text-align: right;
}

ul li a {
	color: white;
	text-decoration: none;
}

.news ul li a {
	color: #848484;
}

.menu a {
	cursor: pointer;
}

.menu .hide {
	display: none;
}

.menubar {
	border: none;
	border: 0px;
	margin-left: 100px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 15px;
}

.menubar ul {
	height: 40px;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar ul li a {
	color: black;
	text-decoration: none;
}

.menubar li a {
	display: inline-block;
	text-align: center;
	text-decoration: none;
	line-height: 50px;
	margin: 0px;
	padding: 0px 15px;
}

.menubar li a:hover, .menubar ul li:hover a {
	color: #ccc;
	text-decoration: none;
}

.menubar a.active {
	background-color: black;
	color: white;
	display: inline-block;
	line-height: 40px;
}

.menubar li li {
	display: block;
	background-color: black;
	border: 0.5px dotted #ccc;
	text-align: left;
	float: none;
	margin: 0px;
	padding: 5px;
	font-size: 15px;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 10px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: left;
}

.menubar li ul a:hover, .menubar li ul li:hover a {
	border: 0px;
	color: #ccc;
	background-color: #ccc;
	text-decoration: none;
}

input[type="text"] {
	width: 400px;
	height: 40px;
	border-radius: 5px;
	border-color: white;
}

input[type="submit"] {
	height: 45px;
	background-color: orange;
	border-radius: 5px;
	border-color: white;
	color: white;
	border: none;
	padding-left: 10px;
	padding-right: 10px;
}
button[type="submit"] {
	height: 90px;
	color: black;
	background-color:white;
	border: 1px black solid;
	width: 100px;
	font-weight:bold;
}

h3 {
	text-align: center;
	font-weight: lighter;
	color: white;
}

h1 {
	font-family: '����';
	padding-top: 100px;
	text-align: center;
	color: white;
}
</style>

</head>
<body>

	<header class="login">
		<nav>
			<ul>
				<a href="../index.jsp" style="margin-right: 600px;"><img
					src="../image/logo1.png" width="7%"></a>
				<li><button id="join">
						<a href="../index.jsp">�α׾ƿ�</a>
					</button></li>
				<li><button id="join">
						<a href="../myinfor.jsp">���� ����</a>
					</button></li>
				<li><button id="join"
						style="background: #FD7200; width: 150px; margin-right: 400px;">
						<a href="../orderList.jsp">�ֹ�ǥ</a>
					</button></li>
			</ul>
		</nav>
	</header>
	<div class="clear"></div>
	<header class="Brand">
		<div class="menubar">
			<ul>
				<li><a href="allmenu.jsp">��ü����&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a  href="1person.jsp">1�κ��ֹ�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a  href="franchise.jsp">���� ������&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a class="active" href="basedfood.jsp">�н�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="pizza.jsp">����&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="chicken.jsp">ġŲ&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="foot.jsp">����/����&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="nightfood.jsp">�߽�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="koreanfood.jsp">�ѽ�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="chinesefood.jsp">�߱���&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="japanesefood.jsp">�Ͻ�/���&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="cafe.jsp">ī��/����Ʈ&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			</ul>
		</div>
	</header>

	<div class="clear"></div>
	<%
		String type = "basedfood";
		ShopService service = ShopService.getInstance();
		ResultSet rs = service.selectByType(type);
	%>

	<table border="1" cellspacing="0">
		<thead>
		<tr>
			<th>������ �̸�</th>
			<th>���� �ð�</th>
			<th>���� ���</th>
		</tr>
		</thead>
	<%
			while (rs.next()) {
		%>
		<tr>
			<td>
			<form action="../shops/basedfoodshop.jsp">
				<input type="hidden" name="name" value="<%=rs.getString(1)%>">
				<button type="submit"><%=rs.getString(1) %></button>
			</form>
			</td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		rs.close();
	%>


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
		<p style="font-weight: bold; font-size: 15px;">(����)������������� ���Ϲ���Ƽ.</P>
		<P>���ν� ó�α� ���δ��з� 134 ���δ��б� ��.17092 TEL: 031-8020-3114 FAX:
			031-332-6479</p>
		<p>����Ǹž��Ű�:�� 2018-���Ｍ��-2635ȣ|������������� : privacy@yogiyo.co.kr|���޹��� :
			partnership@deliveryhero.co.kr|���������� :
			support@yogiyo.co.kr|ȣ��Ʈ���񽺻���� : (��)���÷������ͳ�</p>
	</footer>
</body>
</html>