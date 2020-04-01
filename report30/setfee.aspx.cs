using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class setfee : System.Web.UI.Page
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


        cmdd.CommandText = " insert into Setclassfee (Class, Admission_Fee, Re_admission_Fee, Monthly_Fee, Exam_Fee, ID_Card_Fee, Computer_Fee, Development_Fee) values (@Class, @Admission_Fee, @Re_admission_Fee, @Monthly_Fee, @Exam_Fee, @ID_Card_Fee, @Computer_Fee, @Development_Fee)";
       
        
        cmdd.Parameters.AddWithValue("@Class", DropDownList1.SelectedItem.Value);        //cmdd.Parameters.AddWithValue("@Enroll_No", TextBox5.Text);        
        cmdd.Parameters.AddWithValue("@Admission_Fee", TextBox1.Text);
        cmdd.Parameters.AddWithValue("@Re_admission_Fee", TextBox2.Text);


      
      
    
        cmdd.Parameters.AddWithValue("@Monthly_Fee", TextBox3.Text);
        cmdd.Parameters.AddWithValue("@Exam_Fee", TextBox4.Text);
        cmdd.Parameters.AddWithValue("@ID_Card_Fee", TextBox5.Text);
        cmdd.Parameters.AddWithValue("@Computer_Fee", TextBox6.Text);
        cmdd.Parameters.AddWithValue("@Development_Fee", TextBox7.Text);

      




        cmdd.ExecuteNonQuery();
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("/setfee.aspx");
    }
}