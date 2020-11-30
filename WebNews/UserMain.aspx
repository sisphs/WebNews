<%@ Page Title="" Language="C#" MasterPageFile="~/News.Master" AutoEventWireup="true" CodeBehind="UserMain.aspx.cs" Inherits="WebNews.UserMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>发布新闻</h2>
    <div class="row">
     <form>
      <div class="form-group col-md-8 col-sm-8 col-xs-8 col-md-offset-0 col-sm-offset-0 col-xs-offset-0">
        <label for="exampleInputEmail1">标题</label>
          <asp:TextBox ID="title" runat="server" class="form-control" placeholder="请输入标题"></asp:TextBox>
        
      </div>
      <div class="form-group col-md-4 col-sm-4 col-xs-4">
        <label for="exampleInputPassword1">作者</label>
          <asp:TextBox ID="authorname" runat="server" class="form-control" placeholder="请输入作者名称"></asp:TextBox>
      </div>
          <div class="form-group col-md-12 col-sm-12 col-xs-12">
        <label for="exampleInputPassword1">内容</label>
         <asp:TextBox ID="content" runat="server" placeholder="请输入内容" class="form-control" TextMode="MultiLine" rows="8"></asp:TextBox>     
      </div>
      <div class="form-group col-md-4 col-sm-4 col-xs-4">
        <label for="exampleInputFile">添加附件</label>
          <asp:FileUpload ID="FileUpload1" runat="server" />
      </div>
    </form>
        </div>
    <br />
    <asp:Button class="btn btn-success" ID="Button1" runat="server" OnClick="button_click" Text="确认发布" />
</asp:Content>
