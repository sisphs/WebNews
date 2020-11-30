<%@ Page Title="" Language="C#" MasterPageFile="~/News.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="WebNews.Message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin-bottom:60px;">新闻列表</h2>
    <div class="container" style="width:500px; margin-left:20px;">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="8" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both" ForeColor="Black" RepeatColumns="2" RepeatDirection="Horizontal" CellSpacing="5" Font-Bold="False" Font-Italic="True" Font-Names="幼圆" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" >
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <div style="padding:10px;"  class="col-md-6 col-sm-6 col-xs-6">
                Id:
            <asp:Label ID="IdLabel"  runat="server" Text='<%# Eval("Id") %>' />
            <br />
            标题:
               <asp:Button ID="titleLabel" Style="border:none;"  runat="server" Text='<%# Eval("title") %>' />
            <br />
            作者:
            <asp:Label ID="authornameLabel"  runat="server" Text='<%# Eval("authorname") %>' />
            <br />
                <br />
                 <a href="https://localhost:44399/newsDetail.aspx?id=<%# Eval("Id") %>" >正文连接</a>
            <br />
            </div>
            
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connStr %>" SelectCommand="SELECT [Id], [title], [authorname] FROM [news]"></asp:SqlDataSource>
</asp:Content>

