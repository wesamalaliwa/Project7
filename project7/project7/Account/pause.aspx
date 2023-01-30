<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pause.aspx.cs" Inherits="project7.pause" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
             <div id="pause">
                      <input type="date" id="start" runat="server"/>
                     <input type="date" id="end" runat="server"/>
                     <asp:Button ID="btnPause" runat="server" Text="Send" OnClick="btnPause_Click" />
                 </div>
        
    </form>
</body>
</html>
