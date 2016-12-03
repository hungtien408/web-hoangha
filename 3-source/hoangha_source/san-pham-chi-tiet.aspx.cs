using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class san_pham_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["pi"]))
            {
                var oProductCategory = new ProductCategory();
                var oProduct = new Product();
                var dv = oProduct.ProductSelectOne(Request.QueryString["pi"]).DefaultView;
                hdnProductCategoryID.Value = dv[0]["CategoryID"].ToString();
                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

                //hdnSanPham.Value = progressTitle(dv[0]["ProductCategoryName"].ToString()) + "-pci-" + dv[0]["ProductCategoryID"].ToString() + ".aspx";
                hdnlink.Value = progressTitle(dv[0]["ProductCategoryName"].ToString()) + "-pci-" + dv[0]["CategoryID"].ToString();

                hdnTitle.Value = dv[0]["ProductName"].ToString() + "- Rèm cửa đẹp Hoàng Hà";
                hdnDescription.Value = dv[0]["MetaDescription"].ToString();
                hdnImageName.Value = dv[0]["ImageName"].ToString();
            }
            else
            {
                strTitle = strMetaTitle = "Sản Phẩm";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta()
            {
                Name = "description",
                Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription
            };
            Header.Controls.Add(meta);

            lblProductTitle.Text = strTitle;
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}