<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mockup.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .registerBackground{
            border-style:solid;
            border-color:lightgray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="contentSection" runat="server">
    <div class="registerBackground">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Enter class ID number"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Register_button" runat="server" Text="Register"/>
    <br />
    <br />
    </div>
    
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
