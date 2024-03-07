<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Teacher_Login.aspx.cs" Inherits="TMS_Project.Teacher_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br/>
     <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto" style="box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);">
                <br />
                <div class="jumbotron text-center text-white bg-primary">
                    <h2>Teacher Login</h2>
                </div>
                <asp:TextBox ID="UsernameText" placeholder="Enter User Name" cssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameText" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="UserName Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordText" TextMode="Password" placeholder="Enter Your Password" cssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordText" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Teacher_LoginBtn" OnClick="Teacher_LoginBtn_Click" runat="server" Text="Login" CssClass="btn btn-primary btn-block" />
               <div class="text-center">
                   <a href="Student_Login.aspx" class="text-center">Login As Student</a>
               </div>
                <br />
            </div>
        </div>
            </div>
    <br/>


</asp:Content>
