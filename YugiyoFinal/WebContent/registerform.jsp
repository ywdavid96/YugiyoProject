<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>
            <head>
            <meta charset="utf-8">
            <title>ȸ������</title>
        <style>
             .main{
                         width : 750px;
                         height : 280px;
                         padding-top : 80px;
                         padding-left : 100px;
                          padding-right : 100px;
                         padding-bottom : 80px;
                         border : 1px solid gray;
                         margin : auto;
                     }
                h1{
                         margin-left : 315px;
                     }
   #form_box{
                         width : 500px;
                       height : 29px;
                         padding-left : 10px;
                         float : right;
                       }
.main_common{
                         width : 170px;
                         height : 35px;
                         float:left;
                      }
            .site1{
                         height : 70px;
                         margin-bottom : 10px;
                         }
            .site2{
                         height : 110px;
                         margin-bottom : 10px;
                         }
                 #em{
                          width  : 500px;
                         height : 29px;
                         margin-left : 65px;
                    }
               
                 #ub{
                         width : 100px;
                         height : 50px;
                         background-color : #819FF7;
                         float : right;
                         margin-right : 330px;
                         margin-top : 20px;
                      }
                      body{
			background:#FAFAFA;
		}
		#join {
			margin-top: 10px;
			margin-bottom: 10px;
			width:80px;
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
		.infor{
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
		footer{
			border:1px solid;
			border-color: #cccccc;
			padding:10px;
			padding-right: 50px;
			color: black;
			text-align: right;
			font-size: 10px;

		}
		ul{
			list-style-type: none;
		}
		ul li{
			display: inline;
			text-align: right;
		}
		ul li a{
			color: white;
			text-decoration: none;
		}
		.infor ul li a{
			color:#848484;
		}
    </style>
        </head>
        <body>
        <header class="login">
	<nav>
	
	<ul>
		<a href="index.jsp" style="margin-right: 600px;"><img
					src="image/logo1.png" width="7%"></a>
		<li><button id="join"><a href="loginform.jsp">�α���</a></button></li>
		<li><button id="join"><a href="registerform.jsp">ȸ������</a></button></li>
		<li><button id="join" style="background:#FD7200; width:150px; margin-right:400px;"><a href="#">�ֹ�ǥ</a></button></li>
	</ul>
	</nav>
</header>
            <h1>ȸ������</h1>
            <br>
            <form action="customerInsert.do">
            <div class="main">
                <div class="site1">
                    <div class="main_1 main_common">���̵�</div>
                    <input id="form_box" type = "text" class = "int" maxlength = "20" title = "���̵� �Է�" placeholder = "����� ���̵� �Է��� �ּ���" name="CustomerId">
                </div>
                <div class="site2">
                  <div class="main_3 main_common">��й�ȣ</div>
                    <input id="form_box" type = "password" class = "int" maxlength = "20" title = "��й�ȣ �Է�" placeholder = "����� ��й�ȣ�� �Է��� �ּ���"  name="password">
                </div>
                <div class="site1">
                    <div class="main_4 main_common">�̸�</div>
                    <input id="form_box" type = "text" title = "�̸� �Է�" placeholder = "�̸��� �Է����ּ���" name="name">
                </div>
                <div class="site1">
                    <div class="main_5 main_common">��ȭ��ȣ</div>
                    <input id="form_box" type = "text" class="int" title = "��ȭ��ȣ �Է�" placeholder = " ��ȭ��ȣ �Է�" name="tel">  
                </div>
            </div>
                <input id="ub" type ="submit" value ="ȸ������">
                </form>
                <header class="infor">

                <div class="clear"></div>
	<nav>
	<ul>
	<br>
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
	<p>�� Ȩ�������� ��� �����Դϴ�.</p>
</footer>
        </body>