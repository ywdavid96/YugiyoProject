<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<script>
	function zzz(){
		alert("�α��� �� �̿��� �ּ���.");	
	}
	function c1(){
		location.href="loginform.jsp"
	}
	function c2(){
		location.href="registerform.jsp"
	}
	</script>
<meta charset="EUC-KR">
<title>Ȩ ȭ��</title>
<style>
body {
	background: #F2F2F2;
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
	height: 200px;
	float: left;
	margin-left: 350px;
}

article {
	width: 20%;
	height: 100%;
	margin-left: 10px;
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
		<%
			if (session.getAttribute("id") == null) // �α����� �ȵǾ��� ��
			{
		%>

		<nav>
			<ul>
				<a href="index.jsp" style="margin-right: 600px;"><img
					src="image/logo1.png" width="7%"></a>
				<li><button id="join" onclick="c1()">
						<a href="loginform.jsp">�α���</a>
					</button></li>
				<li><button id="join" onclick="c2()">
						<a href="registerform.jsp">ȸ������</a>
					</button></li>
				<li><button id="join"
						style="background: #FD7200; width: 150px; margin-right: 400px;" onclick="zzz()">
						<a href="#" onclick="zzz()">�ֹ�ǥ</a>
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
						<a href="myinfor.jsp">���� ����</a>
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
	<div class="backimage" style="height: 300px;">
		<h1>
			"���� <span style="color: orange;">���</span> �ص帱���?"
		</h1>
		<h3>��� ������ �� �̸��� �˻����ּ���.</h3>
		<input type="text" style="margin-left: 725px; margin-top: 0px;">
		<input type="submit" value="�˻�">
	</div>
	<div class="clear"></div>
	<div class="body">
	
		<section class="secweek">
		<%
			if (session.getAttribute("id") == null) // �α����� �ȵǾ��� ��
			{
		%>
	
			<article>
				<img src="image/all.png"
					width="100%" height="100%" onclick="zzz()">
			</article>
			<article>
				<img src="image/oneperson.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/franchise.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/schoolfood.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
		</section>
		<section class="secweek">
			<article>
				<img src="image/pizza.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/chicken.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/pigfoot.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/nightfood.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
		</section>
		<section class="secweek" style="margin-bottom: 20px;">
			<article>
				<img src="image/korean.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/chinese.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/japanese.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<article>
				<img src="image/dessert.png"
					width="100%" height="100%"  onclick="zzz()">
			</article>
			<%
			} else {
			%>
				<article>
				<a href="foods/allmenu.jsp"><img src="image/all.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/1person.jsp"><img src="image/oneperson.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/franchise.jsp"><img src="image/franchise.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/basedfood.jsp"><img src="image/schoolfood.png"
					width="100%" height="100%"></a>
			</article>
		</section>
		<section class="secweek">
			<article>
				<a href="foods/pizza.jsp"><img src="image/pizza.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/chicken.jsp"><img src="image/chicken.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/foot.jsp"><img src="image/pigfoot.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/nightfood.jsp"><img src="image/nightfood.png"
					width="100%" height="100%"></a>
			</article>
		</section>
		<section class="secweek" style="margin-bottom: 20px;">
			<article>
				<a href="foods/chicken.jsp"><img src="image/korean.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/chinesefood.jsp"><img src="image/chinese.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/japanesefood.jsp"><img src="image/japanese.png"
					width="100%" height="100%"></a>
			</article>
			<article>
				<a href="foods/cafe.jsp"><img src="image/dessert.png"
					width="100%" height="100%"></a>
			</article>
			<%
				}
			%>
		</section>
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
		<p style="font-weight: bold; font-size: 15px;">(����)������������� ���Ϲ���Ƽ.</P>
		<P>���ν� ó�α� ���δ��з� 134 ���δ��б� ��.17092 TEL: 031-8020-3114 FAX:
			031-332-6479</p>
		<p>����Ǹž��Ű�:�� 2018-���Ｍ��-2635ȣ|������������� : privacy@yogiyo.co.kr|���޹��� :
			partnership@deliveryhero.co.kr|���������� :
			support@yogiyo.co.kr|ȣ��Ʈ���񽺻���� : (��)���÷������ͳ�</p>
	</footer>
	
</body>
</html>