<%@ Page Title="" Language="C#" MasterPageFile="~/student/Student_Dashboard.Master" AutoEventWireup="true" CodeBehind="View_Teachers.aspx.cs" Inherits="TMS_Project.student.View_Teachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center text-light bg-dark jumbotron">Teacher Details</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <asp:TextBox ID="SearchText" Class="form-control" placeholder="Search Teacher" runat="server"></asp:TextBox>
                <div class="input-group-append">
                    <button id="SearchBtn" runat="server"  class="btn btn-success" onserverclick="SearchBtn_ServerClick"><i class="fa fa-search"></i></button>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>
                <div class="col-md-4">
                    <div class="cards bg-dark text-center text-light border">
                        <div class="card-header">
                            <small style="font-size:15px; color:slateblue;">Name</small>
                            <h3><asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label></h3>
                        </div>
                        <div class="card-body">
                            <small style="font-size:15px; color:slateblue;">Email</small>
                            <h5><asp:Label ID="Label2" runat="server" Text='<%# Bind("email") %>'></asp:Label></h5>
                            <small style="font-size:15px; color:slateblue;">Country</small>
                            <h5><asp:Label ID="Label3" runat="server" Text='<%# Bind("country") %>'></asp:Label></h5>
                            <small style="font-size:15px; color:slateblue;">City</small>
                            <h5><asp:Label ID="Label4" runat="server" Text='<%# Bind("city") %>'></asp:Label></h5>
                            <small style="font-size:15px; color:slateblue;">Experience</small>
                            <h5><asp:Label ID="Label5" runat="server" Text='<%# Bind("experience") %>'></asp:Label></h5>
                            <small style="font-size:15px; color:slateblue;">Contact Number</small>
                            <h5><asp:Label ID="Label6" runat="server" Text='<%# Bind("contactno") %>'></asp:Label></h5>
                        </div>
                        <div class="card-footer">
                            <small style="font-size:15px; color:slateblue;">Qualification</small>
                            <h4><asp:Label ID="Label7" runat="server" Text='<%# Bind("degree") %>'></asp:Label></h4>
                        </div>
                    </div>
                    <br />
                </div>
            </ItemTemplate>

        </asp:Repeater>
    </div>

</asp:Content>
