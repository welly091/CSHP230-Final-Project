<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mockup.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="contentSection" runat="server">
    <br />
    <div class="newLoginBackground">
        <br />
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Login Name:" ></asp:Label>
    <br />
    &nbsp;<asp:TextBox ID="NewLogin_LoginName" runat="server" Width="230px"></asp:TextBox>
    <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Login Name" ControlToValidate="NewLogin_LoginName" CssClass="validationColor">*Please enter Login Name</asp:RequiredFieldValidator>
        <br />
    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
    <br />
    &nbsp;<asp:TextBox ID="NewLogin_Password" runat="server" Width="230px"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="*Password" ControlToValidate="NewLogin_Password" CssClass="validationColor">*Please enter password</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Must enter following fields:" CssClass="validationColor" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Log in" BorderStyle="Solid"/>
        <br />
    <br />
    </div>
    <br />
</asp:Content>

