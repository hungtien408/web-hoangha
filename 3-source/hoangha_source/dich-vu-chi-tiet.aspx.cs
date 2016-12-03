using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class dich_vu_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["si"]))
            {
                var oArticleCategory = new ArticleCategory();
                var oArticle = new Article();
                var dv = oArticle.ArticleSelectOne(Request.QueryString["si"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                hdnArticleCategoryID.Value = dv[0]["ArticleCategoryID"].ToString();
                strTitle = Server.HtmlDecode(row["ArticleTitle"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

                //hdnSanPham.Value = progressTitle(dv[0]["ProductCategoryName"].ToString()) + "-pci-" + dv[0]["ProductCategoryID"].ToString() + ".aspx";
                hdnTitle.Value = dv[0]["ArticleTitle"].ToString() + "- Rèm cửa đẹp Hoàng Hà";
                hdnDescription.Value = dv[0]["MetaDescription"].ToString();
                hdnImageName.Value = dv[0]["ImageName"].ToString();
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
            //lblTitle2.Text = strTitle;
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}