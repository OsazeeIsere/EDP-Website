<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Print Clearance.aspx.cs" Inherits="EDP_Website.Print_Clearance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="printpdf" runat="server" OnClick="printpdf_Click">Create PDF</asp:LinkButton>
        </div>
    </form>
</body>
</html>
