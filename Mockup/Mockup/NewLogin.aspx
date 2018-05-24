<%@ Page Title="New Login" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="Mockup.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="RegisterContent" ContentPlaceHolderID="contentSection" runat="server">
    
    <script runat="server">
        protected void Button_Click(object sender, EventArgs e)
            {
                string filePath = MapPath("~/App_Data/loginInfo.txt"); 
                if (!System.IO.File.Exists(filePath)) // If the text. file doesn't exist, create a new one.
                {
                    System.IO.File.CreateText(filePath).Close();
                }   

                System.IO.StreamReader sr = new System.IO.StreamReader(filePath); // Read the previous data in text. file.
                string originatext = sr.ReadToEnd();
                sr.Close();
                System.IO.StreamWriter sw = System.IO.File.CreateText(filePath); //Store new data that user typed on the web page.
                sw.Write(originatext);
                sw.Write(tbName.Text + ", ");
                sw.Write(tbEmail.Text + ", ");
                sw.Write(tbLoginName.Text + ", ");
                sw.Close();

                tbName.Text = ""; // Clear the data.
                tbEmail.Text = "";
                tbLoginName.Text = "";
            
            }
    </script>
    <br />
    <br />
    <div class="newLoginBackground" >
        <br />
        &nbsp;<asp:Label ID="lbName" runat="server" Text="Name: "></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="tbName" runat="server" Width="230px" class="divColor" ></asp:TextBox>
        <br />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Name" CssClass="validationColor" ControlToValidate="tbName">*Please enter valid name.</asp:RequiredFieldValidator>
        <br />
        &nbsp;<asp:Label ID="lbStudentId" runat="server" Text="Student ID: "></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="tbStudentId" runat="server" Width="230px" class="divColor"></asp:TextBox>
        <br />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_StudentId" runat="server" ErrorMessage="*Student ID" CssClass="validationColor" ControlToValidate="tbStudentId">*Please enter valid student ID number.</asp:RequiredFieldValidator>
        <br />
        &nbsp;<asp:Label ID="lbLoginName" runat="server" Text="Login Name: "></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="tbLoginName" runat="server" Width="230px" Class="divColor"></asp:TextBox>
        <br />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Login Name" CssClass="validationColor" ControlToValidate="tbLoginName">*Please enter valid login name.</asp:RequiredFieldValidator>
        <br />
        &nbsp;<asp:Label ID="lbEmail" runat="server" Text="EmailAddress: "></asp:Label>
        <br />
        &nbsp<asp:TextBox ID="tbEmail" runat="server" Width="230px" class="divColor" ></asp:TextBox>
        <br />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Email Address" CssClass="validationColor" ControlToValidate="tbEmail" Display="Dynamic">*Please enter a valid email adress.</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="*Email Address" CssClass="validationColor" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail">*Make sure you enter a valid email adress.</asp:RegularExpressionValidator>
        <br />
        &nbsp;<asp:Label ID="lbPassword" runat="server" Text="Password: "></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="tbPassword" runat="server" Width="230px" Class="divColor"></asp:TextBox>
        <br />
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Password" CssClass="validationColor" ControlToValidate="tbPassword">*Please enter valid password</asp:RequiredFieldValidator>
        <br />
        &nbsp;<asp:Label ID="lbConfirmPassword" runat="server" Text="Re-enter password: " ></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="tbConfirmPassword" runat="server" Width="230px" CssClass="divColor"></asp:TextBox>
        <br />
        &nbsp;<asp:RequiredFieldValidator ID="validatorConfirmPassword" runat="server" ErrorMessage="*Please re-enter your password." CssClass="validationColor" ControlToValidate="tbConfirmPassword" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="compareConfirmPassword" runat="server" CssClass="validationColor" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" ErrorMessage="*Make sure the password matches." Display="Dynamic" >*Does not match the password.</asp:CompareValidator>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validationColor" HeaderText="Must enter following fields:"/>
        <asp:Button ID="Button1" runat="server" Text="Submit" BorderStyle="Solid" class="divColor" OnClick="Button_Click"/>
        <br />
        <br />
    </div>
    <br />
    <br />
</asp:Content>

