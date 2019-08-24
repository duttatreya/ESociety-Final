using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESMS
{
    public partial class AdminBusinessOutlets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //}

  
        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["boname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtboname")).Text;
            SqlDataSource1.InsertParameters["bocontact"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtbocontact")).Text;
            SqlDataSource1.InsertParameters["bosocietyid"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlbosocietyid")).SelectedValue;
            SqlDataSource1.InsertParameters["botype"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlbotype")).SelectedValue;
            SqlDataSource1.Insert();
        }

        protected void lbInsert_Click1(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["boname"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtboname")).Text;
            SqlDataSource2.InsertParameters["bocontact"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtbocontact")).Text;
            SqlDataSource2.InsertParameters["bosocietyid"].DefaultValue = ((DropDownList)GridView2.FooterRow.FindControl("ddlbosocietyid")).SelectedValue;
            SqlDataSource2.InsertParameters["botype"].DefaultValue = ((DropDownList)GridView2.FooterRow.FindControl("ddlbotype")).SelectedValue;
            SqlDataSource2.Insert();
        }

        protected void lbInsert_Click2(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["boname"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtboname")).Text;
            SqlDataSource3.InsertParameters["bocontact"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtbocontact")).Text;
            SqlDataSource3.InsertParameters["bosocietyid"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("ddlbosocietyid")).SelectedValue;
            SqlDataSource3.InsertParameters["botype"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("ddlbotype")).SelectedValue;
            SqlDataSource3.Insert();
        }

        protected void lbInsert_Click3(object sender, EventArgs e)
        {
            SqlDataSource4.InsertParameters["boname"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("txtboname")).Text;
            SqlDataSource4.InsertParameters["bocontact"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("txtbocontact")).Text;
            SqlDataSource4.InsertParameters["bosocietyid"].DefaultValue = ((DropDownList)GridView4.FooterRow.FindControl("ddlbosocietyid")).SelectedValue;
            SqlDataSource4.InsertParameters["botype"].DefaultValue = ((DropDownList)GridView4.FooterRow.FindControl("ddlbotype")).SelectedValue;
            SqlDataSource4.Insert();
        }
    }
}