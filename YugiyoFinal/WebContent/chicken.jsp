
<%@page import="java.sql.ResultSet"%>
<%@page import="shop.service.ShopService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ġŲ</title>
<link rel="stylesheet" href="css/shops.css">

</head>
<body>

	<header class="login">
		<nav>
			<ul>
				<a href="index.jsp" style="margin-right: 600px;"><img
					src="image/logo1.png" width="7%"></a>
				<li><button id="join">
						<a href="index.jsp">�α׾ƿ�</a>
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
	</header>
	<div class="clear"></div>
	<header class="Brand">
		<div class="menubar">
			<ul>
				<li><a href="#">��ü����&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">1�κ��ֹ�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">���� ������&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">�н�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">����&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a class="active" href="#">ġŲ&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">����/����&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">�߽�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">�ѽ�&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">�߱���&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">�Ͻ�/���&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				<li><a href="#">ī��/����Ʈ&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			</ul>
		</div>
	</header>

	<div class="clear"></div>
	<%
		String type = "chicken";
		ShopService service = ShopService.getInstance();
		ResultSet rs = service.selectByType(type);
	%>

	<table border="1" cellspacing="0">
		<tr>
			<td>������ �̸�</td>
			<td>���� �ð�</td>
			<td>���� ���</td>
		</tr>

		<%
			while (rs.next()) {
		%>
		<tr>
			<td>
			<form action="shops/shop.jsp">
				<input type="hidden" name="name" value="<%=rs.getString(1)%>">
				<button type="submit"><%=rs.getString(1) %></button>
			</form>
			</td>
			<%-- <td><a href="shops/<%=rs.getString(1)%>.jsp"><%=rs.getString(1)%></a></td> --%>
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