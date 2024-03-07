<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TMS_Project.admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin_Login</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="Stylesheet"/>
</head>
<body style="background-color:whitesmoke;" >
    <form id="form1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto" style="box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);">
                <div class="jumbotron text-center text-white bg-primary">
                    <h2>Admin Login</h2>
                </div>
                <asp:TextBox ID="UsernameText" placeholder="Enter User Name" cssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameText" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="UserName Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordText" placeholder="Enter Your Password" cssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordText" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="LoginBtn" OnClick="LoginBtn_Click" runat="server" Text="Login" CssClass="btn btn-primary btn-block" />
                <br />
            </div>
        </div>
            </div>
    </form>
    <script  src="~/assets/vendor/jquery/jquery.min.js"></script>
    <script src="~/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
