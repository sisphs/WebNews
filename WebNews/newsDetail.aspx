<%@ Page Title="" Language="C#" MasterPageFile="~/News.Master" AutoEventWireup="true" CodeBehind="newsDetail.aspx.cs" Inherits="WebNews.newsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2  Style="text-align:center;"><asp:Label ID="title"  runat="server" Text="Label">标题</asp:Label></h2>
    <br />
    <asp:Label ID="author" runat="server" Text="Label">作者</asp:Label>
    <br /><hr /><br />
    <asp:Label ID="content" runat="server" Text="Label" class="lead">内容</asp:Label><br /><br /><hr />
    <a id="download" href="File/<%=filename%>" onclick="isExist">点击下载附件</a>
    <p style="display:none;" id="filename"><%=filename%></p>
    <script>
        $(function () {
            $("#download").click(function (event) {
                if ($("#filename").text().trim() == "") {                 
                    event.preventDefault();
                    alert("本文无附件");
                }
            });
        })
    </script>
</asp:Content>
