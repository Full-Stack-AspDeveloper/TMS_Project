<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container" style="box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);
                                 -webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);
                                 -moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-center text-white">Student Signup</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Father Name Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Sur Name" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Sur Name Is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="GenderDropDownList" InitialValue="Select Gender" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age Is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 5 To 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
<%--                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>--%>
                <asp:DropDownList ID="countryDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="countryDropDownList_SelectedIndexChanged"></asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="countryDropDownList" InitialValue="Select Country" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Country Is Required"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4">
            <%--<asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>--%>
                <asp:DropDownList ID="cityDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="cityDropDownList" InitialValue="Select City" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="City Is Required"></asp:RequiredFieldValidator>
                <br />
            <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address Is Required"></asp:RequiredFieldValidator>
           <br />
            <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Classs" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Class Is Required"></asp:RequiredFieldValidator>
                <br />
                   <asp:DropDownList ID="GoingtoDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>Collage</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                                 <asp:RequiredFieldValidator ControlToValidate="GoingtoDropDownList" InitialValue="Select Going To" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Going To Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Subject Is Required"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-4">
                 <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Contact Number Is Required"></asp:RequiredFieldValidator>
                    <br />
                     <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tution Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>   
                     </asp:DropDownList>
                                 <asp:RequiredFieldValidator ControlToValidate="TutionTypeDropDownList" InitialValue="Select Tution Type" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Tution Type Is Required"></asp:RequiredFieldValidator>
                    <br />
                     <asp:DropDownList ID="TeacherPreferDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Teacher Prefer</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>MPHIL</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                                 <asp:RequiredFieldValidator ControlToValidate="TeacherPreferDropDownList" InitialValue="Select Teacher Prefer" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Teacher Prefer Is Required"></asp:RequiredFieldValidator>
                    <br />
                <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="User Name Is Required"></asp:RequiredFieldValidator>
                    <br />
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" ErrorMessage="Please Enter Strong Password"></asp:RegularExpressionValidator>
                    <br />
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Confirm Password Is Required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Both Password Must be Identical"></asp:CompareValidator>
                    </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="Student_SignupButton" OnClick="Student_SignupButton_Click" Text="Signup" CssClass="btn btn-primary btn-block"  runat="server" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto text-center">
                <a href="Student_Signup.aspx" class="btn badge-success"> Signup As Student</a>
                <a href="Tutor_Signup.aspx" class="btn badge-info">Signup As Teacher</a>
            </div>
        </div>
        <br />
    </div>
    <br />
</asp:Content>
