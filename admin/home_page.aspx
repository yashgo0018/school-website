<%@ Page Title="Edit Home Page" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" 
CodeFile="home_page.aspx.cs" Inherits="admin_home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="heading">Edit Home Page</div>
    <hr /><br />
    <div class="heading">slider:-</div><br />
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td><div class="sub-heading">Background Image:-</div></td>
            <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td><div class="sub-heading">Title:-</div></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="sub-heading">SubTitle:-</div></td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="sub-heading">Description:-</div></td>
            <td><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Add" CssClass="change" 
                    onclick="Button1_Click" /></td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" Caption="Edit Current Slider" 
        CaptionAlign="Top" CellPadding="500" CellSpacing="2" Height="54px" 
        HorizontalAlign="Center" Width="409px">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" 
                SortExpression="title" />
            <asp:BoundField DataField="subtitle" HeaderText="subtitle" 
                SortExpression="subtitle" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True"/>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
    DeleteCommand="DELETE FROM [home_slider] WHERE [id] = @id" 
    InsertCommand="INSERT INTO [home_slider] ([title], [subtitle], [description], [image]) VALUES (@title, @subtitle, @description, @image)" 
    SelectCommand="SELECT * FROM [home_slider]" 
    UpdateCommand="UPDATE [home_slider] SET [title] = @title, [subtitle] = @subtitle, [description] = @description, [image] = @image WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="subtitle" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="subtitle" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>


    <%--<table border="1" cellpadding="0" cellspacing="0">
        <asp:Repeater runat="server" ID="repeater1">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("subtitle") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Button runat="server" Text="Button" onclick='Button4_Click'  />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>--%>
    <br />
    <div class="heading">Services:-</div><br />
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td><div class="sub-heading">Title:-</div></td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="sub-heading">Description:-</div></td>
            <td><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button2" runat="server" Text="Add" CssClass="change" onclick="Button2_Click" /></td>
        </tr>
    </table>
    <br />
    <div class="heading">Services:-</div><br />
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td><div class="sub-heading">Title:-</div></td>
            <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><div class="sub-heading">Description:-</div></td>
            <td><asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button3" runat="server" Text="Add" CssClass="change" onclick="Button3_Click" /></td>
        </tr>
    </table>
</asp:Content>