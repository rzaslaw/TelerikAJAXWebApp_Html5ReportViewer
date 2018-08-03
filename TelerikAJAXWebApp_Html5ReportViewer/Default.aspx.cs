using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Telerik.Web.UI;

public partial class Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }

    protected void RadDropDownList1_SelectedIndexChanged(object sender, DropDownListEventArgs e)
    {
        if (RadDropDownList1.SelectedItem != null)
        {
            reportViewer1.ReportSource.IdentifierType = Telerik.ReportViewer.Html5.WebForms.IdentifierType.UriReportSource;
            reportViewer1.ReportSource.Identifier = e.Value;
            reportViewer1.Visible = true;
        }
    }
}
