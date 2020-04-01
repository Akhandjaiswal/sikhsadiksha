using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class settransport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True");
        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;
        con.Open();


        cmdd.CommandText = " insert into Transport (Place, Fare) values (@Place, @Fare)";

        cmdd.Parameters.AddWithValue("@Place", TextBox1.Text);
        cmdd.Parameters.AddWithValue("@Fare", TextBox2.Text);


        
        cmdd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        TextBox1.Text = "";
        TextBox2.Text = "";

    
    }
}