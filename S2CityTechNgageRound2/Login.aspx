<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cloud_Security_Assessment.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body style="background-image:url(images/BackgroundPage.png)">

    <div class="container">
        <div class="row">

            <div class="col-md-4 col-md-offset-4">

                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Login In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" runat="server">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter User Id or email" ></asp:TextBox>

                                    <%--<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>--%>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter password" CssClass="form-control"></asp:TextBox>
                                    <%--<input class="form-control" placeholder="Password" name="password" type="password" value="">--%>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="chkRemember" runat="server" />Remember Me
                                       
                                        <%--<input name="remember" type="checkbox" value="Remember Me">--%>
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" />
                                <%--<a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>--%>
                            </fieldset>
                        </form>
                    </div>
                    <asp:Panel ID="pannelNotification" runat="server" Visible="false">
                        <div class="alert alert-danger">
                            <%=messsage %>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>

