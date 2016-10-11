using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class dich_vu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsService.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["sci"]))
            {
                var oArticleCategory = new ArticleCategory();
                var oArticle = new Article();
                var dv = oArticleCategory.ArticleCategorySelectOne(Request.QueryString["sci"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ArticleCategoryName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTitle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

                //hdnSanPham.Value = progressTitle(dv[0]["ProductCategoryName"].ToString()) + "-pci-" + dv[0]["ProductCategoryID"].ToString() + ".aspx";
                hdnlink.Value = progressTitle(dv[0]["ArticleCategoryName"].ToString()) + "-sci-" + dv[0]["ArticleCategoryID"].ToString();
            }
            else
            {
                strTitle = strMetaTitle = "Dịch Vụ";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);

            lblTitle.Text = strTitle;
            lblTitle2.Text = strTitle;
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}