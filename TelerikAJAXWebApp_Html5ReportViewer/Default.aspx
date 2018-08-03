<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default" %>

<%@ Register TagPrefix="telerik" Assembly="Telerik.ReportViewer.Html5.WebForms" Namespace="Telerik.ReportViewer.Html5.WebForms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Telerik HTML5 Web Forms Report Viewer Form</title>
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />

    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

    <style>
        #reportViewer1 {
            position: absolute;
            left: 5px;
            right: 5px;
            top: 50px;
            bottom: 5px;
            overflow: hidden;
            font-family: Verdana, Arial;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </telerik:RadScriptManager>
        <script type="text/javascript">
        //Put your JavaScript code here.
        </script>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
      

            <telerik:RadDropDownList RenderMode="Lightweight" ID="RadDropDownList1"
                runat="server"
                Width="300px"
                AutoPostBack="True"
                DefaultMessage="Select Report..."
                OnSelectedIndexChanged="RadDropDownList1_SelectedIndexChanged"
                >
                <Items>
                    <telerik:DropDownListItem runat="server" Text="Barcodes " Value="Barcodes Report.trdp" />
                    <telerik:DropDownListItem runat="server" Text="Dashboard" Value="Dashboard.trdp" />
                    <telerik:DropDownListItem runat="server" Text="Invoice" Value="Invoice.trdp" />
                    <telerik:DropDownListItem runat="server" Text="Product Catalog" Value="Product Catalog.trdp" />
                </Items>
            </telerik:RadDropDownList>

            <p></p>

            <telerik:ReportViewer
                ID="reportViewer1"
                Visible="false"
                Width="1300px"
                Height="900px"
                EnableAccessibility="false"
                runat="server">
                <ReportSource IdentifierType="UriReportSource" Identifier="">
                </ReportSource>
            </telerik:ReportViewer>

       
    </form>
</body>
</html>
