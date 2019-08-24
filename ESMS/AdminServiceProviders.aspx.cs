using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESMS
{
    public partial class AdminServiceProviders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    SqlDataSource1.InsertParameters["aadhar"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtaadhar")).Text;
        //    SqlDataSource1.InsertParameters["spname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtspname")).Text;
        //    SqlDataSource1.InsertParameters["contact"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtcontact")).Text;
        //    SqlDataSource1.InsertParameters["societyid"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlsocietyid")).SelectedValue;
        //    SqlDataSource1.InsertParameters["type"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddltype")).SelectedValue;
        //    SqlDataSource1.InsertParameters["rating"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtrating")).Text;
        //    SqlDataSource1.Insert();

        //}

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["aadhar"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtaadhar")).Text;
            SqlDataSource1.InsertParameters["spname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtspname")).Text;
            SqlDataSource1.InsertParameters["contact"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtcontact")).Text;
            SqlDataSource1.InsertParameters["societyid"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlsocietyid")).SelectedValue;
            SqlDataSource1.InsertParameters["type"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddltype")).SelectedValue;
            SqlDataSource1.InsertParameters["rating"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtrating")).Text;
            SqlDataSource1.Insert();

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["aadhar"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtaadhar")).Text;
            SqlDataSource2.InsertParameters["spname"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtspname")).Text;
            SqlDataSource2.InsertParameters["contact"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtcontact")).Text;
            SqlDataSource2.InsertParameters["societyid"].DefaultValue = ((DropDownList)GridView2.FooterRow.FindControl("ddlsocietyid")).SelectedValue;
            SqlDataSource2.InsertParameters["type"].DefaultValue = ((DropDownList)GridView2.FooterRow.FindControl("ddltype")).SelectedValue;
            SqlDataSource2.InsertParameters["rating"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("txtrating")).Text;
            SqlDataSource2.Insert();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["aadhar"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtaadhar")).Text;
            SqlDataSource3.InsertParameters["spname"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtspname")).Text;
            SqlDataSource3.InsertParameters["contact"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtcontact")).Text;
            SqlDataSource3.InsertParameters["societyid"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("ddlsocietyid")).SelectedValue;
            SqlDataSource3.InsertParameters["type"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("ddltype")).SelectedValue;
            SqlDataSource3.InsertParameters["rating"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtrating")).Text;
            SqlDataSource3.Insert();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            SqlDataSource4.InsertParameters["aadhar"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("txtaadhar")).Text;
            SqlDataSource4.InsertParameters["spname"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("txtspname")).Text;
            SqlDataSource4.InsertParameters["contact"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("txtcontact")).Text;
            SqlDataSource4.InsertParameters["societyid"].DefaultValue = ((DropDownList)GridView4.FooterRow.FindControl("ddlsocietyid")).SelectedValue;
            SqlDataSource4.InsertParameters["type"].DefaultValue = ((DropDownList)GridView4.FooterRow.FindControl("ddltype")).SelectedValue;
            SqlDataSource4.InsertParameters["rating"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("txtrating")).Text;
            SqlDataSource4.Insert();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            SqlDataSource5.InsertParameters["aadhar"].DefaultValue = ((TextBox)GridView5.FooterRow.FindControl("txtaadhar")).Text;
            SqlDataSource5.InsertParameters["spname"].DefaultValue = ((TextBox)GridView5.FooterRow.FindControl("txtspname")).Text;
            SqlDataSource5.InsertParameters["contact"].DefaultValue = ((TextBox)GridView5.FooterRow.FindControl("txtcontact")).Text;
            SqlDataSource5.InsertParameters["societyid"].DefaultValue = ((DropDownList)GridView5.FooterRow.FindControl("ddlsocietyid")).SelectedValue;
            SqlDataSource5.InsertParameters["type"].DefaultValue = ((DropDownList)GridView5.FooterRow.FindControl("ddltype")).SelectedValue;
            SqlDataSource5.InsertParameters["rating"].DefaultValue = ((TextBox)GridView5.FooterRow.FindControl("txtrating")).Text;
            SqlDataSource5.Insert();
        }
    }
}