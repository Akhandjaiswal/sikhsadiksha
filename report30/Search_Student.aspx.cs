using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class Search_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["enrl"] = GridView1.SelectedRow.Cells[1].Text;
        Session["stdname"]= GridView1.SelectedRow.Cells[2].Text;
        Session["class"] = GridView1.SelectedRow.Cells[3].Text;
        Session["sec"] = GridView1.SelectedRow.Cells[4].Text;
        Session["fathname"] = GridView1.SelectedRow.Cells[7].Text;
        Response.Redirect("Fee_Payment.aspx");
    
    }
}