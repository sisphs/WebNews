<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebNews.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎登录</title>
    <link href="Mycss/login.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
	<script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
	
    <div id="container" class="container">

        <!-- logo图片 -->
        <div style="text-align: center; height: 100px;">
            <!-- <img id="logo" class="img-rounded" src="image/logo.png"> -->
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-8 col-md-offset-4 col-sm-offset-3 col-xs-offset-2">
                <div class="thumbnail">
                    <div style="height: 30px;">
                    </div>
                    <form class="form-horizontal" role="form" runat="server">
                        <div class="form-group">
                            <label for="firstname" class="col-xs-1 col-xs-offset-1 control-label">
                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            </label>
                            <div class="col-xs-9">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="请输入账号"></asp:TextBox>
                        

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-xs-1 col-xs-offset-1 control-label">
                                <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                            </label>
                            <div class="col-xs-9">
                                 <asp:TextBox ID="TextBox2" runat="server" type="password" class="form-control" placeholder="请输入密码"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-offset-3 col-xs-6">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" Style="width: 100%; color: #FFFFFF; background-color: #59a4ff;" type="submit" class="btn btn-default" />
                            </div>
                        </div>
                        <asp:Label ID="lblMessage" runat="server" Text="" Style="color:red;"></asp:Label>
                    </form>
                </div>
            </div>


        </div>

    </div>
		    <div class="div_foot">
		        &copy;2020.XXxx版权所有
		    </div>

</body>
</html>
