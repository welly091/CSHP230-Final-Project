<%@ Page Title="My Classes" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="MyClasses.aspx.cs" Inherits="Mockup.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="contentSection" runat="server">
    <br />
    <asp:Label ID="myClasses" runat="server"> The classese you registered: </asp:Label>
    <br />
    <br />
    <asp:Table ID="tableClasses" runat="server" Borderwidth="2px" GridLines="Both">
        <asp:TableRow>
            <asp:TableCell>Class number</asp:TableCell>
            <asp:TableCell >Class title</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
