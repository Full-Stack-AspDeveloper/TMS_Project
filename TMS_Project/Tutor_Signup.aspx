<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TMS_Project.Tutor_Signup" %>
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
            <h1 class="jumbotron bg-primary text-center text-white">Tutor Signup</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Sur Name" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Sur Name Is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                   
                </asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="GenderDropDownList" InitialValue="Select Gender" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender Is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age Is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 20 To 70" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="70" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ID="RegularExpressionValidator2" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Seperated</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="MaritalStatusDropDownList" InitialValue="Select Status" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Marital Status Is Required"></asp:RequiredFieldValidator>

                </div>
            <div class="col-md-4">

            <%--                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>--%>
                <asp:DropDownList ID="countryDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="countryDropDownList_SelectedIndexChanged" ></asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="countryDropDownList" InitialValue="Select Country" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Country Is Required"></asp:RequiredFieldValidator>
           <br />

            <%--<asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>--%>
                <asp:DropDownList ID="cityDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="cityDropDownList" InitialValue="Select City" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="City Is Required"></asp:RequiredFieldValidator>
                <br />
            <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address Is Required"></asp:RequiredFieldValidator>
           <br />
                    <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>Mphil</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="QualificationDropDownList" InitialValue="Select Qualification" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Qualification Is Required"></asp:RequiredFieldValidator>

      
                <br /> 
            </div>
                <div class="col-md-4">
                             <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter Degree" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Degree Is Required"></asp:RequiredFieldValidator>
                <br /> 
                    <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>1 Year</asp:ListItem>
                    <asp:ListItem>2 Years</asp:ListItem>
                    <asp:ListItem>3 Years</asp:ListItem>
                    <asp:ListItem>4 Years</asp:ListItem>
                    <asp:ListItem>5+ Years</asp:ListItem>
                    <asp:ListItem>8+ Years</asp:ListItem>
                    <asp:ListItem>10+ Years</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ExperienceDropDownList" InitialValue="Select Experience" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator19" runat="server" ErrorMessage="Experience Is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Contact Number Is Required"></asp:RequiredFieldValidator>
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
                <asp:Button ID="Tutor_SignupButton" OnClick="Tutor_SignupButton_Click" Text="Signup" CssClass="btn btn-primary btn-block"  runat="server" />
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
