﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class tin_tuc_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["tt"]))
            {
                var oArticleCategory = new ArticleCategory();
                var oArticle = new Article();
                var dv = oArticle.ArticleSelectOne(Request.QueryString["tt"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ArticleTitle"].ToString()) + " - Rèm cửa đẹp Hoàng Hà";
                strDescription = Server.HtmlDecode(row["Description"].ToString()) + " - Rèm cửa đẹp Hoàng Hà";
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString()) + " - Rèm cửa đẹp Hoàng Hà";
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString()) + " - Rèm cửa đẹp Hoàng Hà";

                hdnTitle.Value = dv[0]["ArticleTitle"].ToString() + "- Rèm cửa đẹp Hoàng Hà";
                hdnDescription.Value = dv[0]["MetaDescription"].ToString();
                hdnImageName.Value = dv[0]["ImageName"].ToString();
            }
            else
            {
                strTitle = strMetaTitle = "Tin Tức";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);

            lblTitle.Text = strTitle;
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}