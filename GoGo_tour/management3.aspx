<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="management3.aspx.cs" Inherits="GoGo_tour.management3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/management.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <span id="logo">
                <img src="img/logoko1.png" /></span>
            <h1>勾勾网后台管理系统</h1>
            <span id="head_right" runat="server"></span>
        </header>
        <main>
            <nav>
                <div id="nav_title">导航菜单</div>
                <ul>
                    <li><a href="management.aspx">首页</a></li>
                    <li><a href="management1.aspx">查看用户</a></li>
                    <li><a href="management2.aspx">修改用户</a></li>
                    <li class="active"><a href="management3.aspx">添加景点</a></li>
                    <li><a href="management4.aspx">查看景点</a></li>
                    <li><a href="#">空白</a></li>
                    <li><a href="#">空白</a></li>
                    <li><a href="#">空白</a></li>
                </ul>
            </nav>
            <div id="ifram">
                <h2>添加景点</h2>
                <div style="margin-left:15%">
                    <div style="padding:15px"><asp:Label ID="Label1" runat="server" Text="名称"></asp:Label>
                    <input id="Text1" type="text" runat="server" /></div>
                    
                 
                    <div style="padding:15px"> <asp:Label ID="Label2" runat="server" Text="介绍"></asp:Label>
                    <input id="Text2" type="text"  runat="server"  /></div>
                   
                  <div style="padding:15px"> <asp:Label ID="Label3" runat="server" Text="地址"></asp:Label>
                    <input id="Text3" type="text"  runat="server"  /></div>
                      <div style="padding:15px"> <asp:Label ID="Label4" runat="server" Text="评分"></asp:Label>
                    <input id="Text4" type="text"  runat="server" /></div>
                      <div style="padding:15px"> <asp:Label ID="Label5" runat="server" Text="新价格"></asp:Label>
                    <input id="Text5" type="text"  runat="server"  /></div>
                      <div style="padding:15px"> <asp:Label ID="Label6" runat="server" Text="老价格"></asp:Label>
                    <input id="Text6" type="text "   runat="server" /></div>
                      <div style="padding:15px">  <asp:Label ID="Label7" runat="server" Text="信息"></asp:Label>
                    <input id="Text7" type="text"   runat="server" /></div>
                      
                   <div>
                    <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    <asp:Button ID="Button2" runat="server" Text="添加"  style="width:100px;height:30px" OnClick="Button2_Click"
                        />

                   
                </div>
            </div>
        </main>
        <footer></footer>
    </form>
</body>
</html>
