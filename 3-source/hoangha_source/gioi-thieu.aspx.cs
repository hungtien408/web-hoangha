using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class gioi_thieu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Giới Thiệu - Rèm cửa đẹp Hoàng Hà";
            var meta = new HtmlMeta() { Name = "description", Content = "Giới Thiệu - Rèm cửa đẹp Hoàng Hà" };
            Header.Controls.Add(meta);
        }
    }
}