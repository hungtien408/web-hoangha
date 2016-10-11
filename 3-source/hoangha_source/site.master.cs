using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using TLLib;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("san-pham.aspx?ci=") || page.Contains("chi-tiet-san-pham.aspx?pi="))
                activePage = "san-pham.aspx";
            else if (page.Contains("-si-"))
                activePage = "dich-vu.aspx";
            else if (page.Contains("-tt-"))
                activePage = "tin-tuc.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }

    protected void btnNewLetter_Click(object sender, EventArgs e)
    {
        if (txtNewLetter.Text != "")
        {
            new TLLib.Newsletter().NewsletterInsert(txtNewLetter.Text.ToString().Trim());
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã đăng ký nhận tin của White Palace !')});", true);
        }
        txtNewLetter.Text = "";
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("tim-kiem.aspx?kw=" + txtSearch.Text.Trim());
    }
    protected void btnSearch2_Click(object sender, EventArgs e)
    {
        Response.Redirect("tim-kiem.aspx?kw=" + txtSearch2.Text.Trim());
    }
}
