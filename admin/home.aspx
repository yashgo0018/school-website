<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class='heading'>Site Settings</div>
    <hr /><br />

    <div class="sub-heading">Logo:- </div>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Change" onclick="Button1_Click" /><br /><br />

    <div class='sub-heading'>title:- </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="Change" onclick="Button2_Click" /><br /><br />

    <div class='sub-heading'>tagline:- </div>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Change" onclick="Button3_Click" /><br /><br />

</asp:Content>