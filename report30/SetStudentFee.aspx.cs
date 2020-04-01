using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;
using System.Data;
using System.Configuration;

public partial class SetStudentFee : System.Web.UI.Page
{

    int f=2;
    protected void Page_Load(object sender, EventArgs e)
    {

        

        if (IsPostBack != true)
        {
            ImageButton2.Visible = false;
            ImageButton1.Visible = true;
            divcheck.Visible = false;
        }
        else
        {
            // ImageButton1.Visible = false;
            ImageButton2.Visible = true;
            
        }


        Label20.Text = (Session["enrollno"]).ToString();

        Label23.Text = (Session["DOBirth"]).ToString();
        Label21.Text = (Session["Sname"]).ToString();
        Label24.Text = (Session["Fname"]).ToString();
        TextBox15.Text = (Session["Cls"]).ToString();
        Label25.Text = (Session["Csection"]).ToString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True");
        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;
        con.Open();

        cmdd.CommandText = " insert into Setstudentfee (Enroll_No, DOB, Name, Father_Name, Class, Csec, Admission_Fee, Re_admission_Fee, Monthly_Fee, Exam_Fee, Computer_Fee, Management_Fee, Transport, From_Place, Tr_fee, ID_Card_Fee) values (@Enroll_No, @DOB, @Name, @Father_Name, @Class, @Csec, @Admission_Fee, @Re_admission_Fee, @Monthly_Fee, @Exam_Fee, @Computer_Fee, @Management_Fee, @Transport, @From_Place, @Tr_fee, @ID_Card_Fee)";

        cmdd.Parameters.AddWithValue("@Enroll_No", Label20.Text);
        cmdd.Parameters.AddWithValue("@DOB", Label23.Text);
        cmdd.Parameters.AddWithValue("@Name", Label21.Text);
        cmdd.Parameters.AddWithValue("@Father_Name", Label24.Text);
        cmdd.Parameters.AddWithValue("@Class", TextBox15.Text);
        cmdd.Parameters.AddWithValue("@Csec", Label25.Text);
        cmdd.Parameters.AddWithValue("@Admission_Fee", TextBox6.Text);
        cmdd.Parameters.AddWithValue("@Re_admission_Fee", TextBox13.Text);
        cmdd.Parameters.AddWithValue("@Monthly_Fee", TextBox7.Text);
        cmdd.Parameters.AddWithValue("@Exam_Fee", TextBox8.Text);
        cmdd.Parameters.AddWithValue("@Computer_Fee", TextBox9.Text);
        cmdd.Parameters.AddWithValue("@Management_Fee", TextBox10.Text);

        if (f == 1)
        {
            cmdd.Parameters.AddWithValue("@Transport", "No");

        }

        else if (f == 2)
        {
            cmdd.Parameters.AddWithValue("@Transport", "No");
        }

        else
        {
            cmdd.Parameters.AddWithValue("@Transport", "Yes");
        }
        
        cmdd.Parameters.AddWithValue("@From_Place", DropDownList4.SelectedItem.Value);
        cmdd.Parameters.AddWithValue("@Tr_Fee", TextBox12.Text);
        cmdd.Parameters.AddWithValue("@ID_Card_Fee", TextBox14.Text);
       // cmdd.Parameters.AddWithValue("@Student_Name", TextBox1.Text);


        cmdd.ExecuteNonQuery();
        con.Close();

    }








    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.Visible = false;

        ImageButton2.Visible = true;

        divcheck.Visible = true;
        f = 1;

       

    }
    protected void  ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.Visible = true;
        ImageButton2.Visible = false;

        divcheck.Visible = false;
        f = 0;
    }

    /*
    protected void Label22_Load(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

        con.Open();
        //String OleDbSelectQuery = "SELECT * FROM feedata WHERE enrollno = " + Convert.ToString(Label22.Text);
        String senrl = Label22.Text.ToString();

        String OleDbSelectQuery = "SELECT * FROM Setclassfee WHERE Class =  '" + senrl + "' ";

        OleDbCommand cmd = new OleDbCommand(OleDbSelectQuery, con);

        
        // Label6.Text = Label22.Text;


        OleDbDataReader Reader = cmd.ExecuteReader();
        if (Reader.Read())
        {
            if (Reader["Class"].ToString() == "1")
            {
                TextBox6.Text = Reader["Admission_Fee"].ToString();
            }
        }   

        else
            {
                TextBox6.Text = 600.ToString();
            
            }
        TextBox6.Text = 500.ToString();

        con.Close();

    }
     */


    protected void TextBox15_TextChanged(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();
        //String OleDbSelectQuery = "SELECT * FROM feedata WHERE enrollno = " + Convert.ToString(Label22.Text);
        String senrl = TextBox15.Text.ToString();

        String OleDbSelectQuery = "SELECT * FROM Setclassfee WHERE Class =  '" + senrl + "' ";

        OleDbCommand cmd = new OleDbCommand(OleDbSelectQuery, con);
        OleDbDataReader Reader = cmd.ExecuteReader();
        if (Reader.Read())
        {
            if (Reader["Class"].ToString() == "1")
            {
                TextBox6.Text = Reader["Admission_Fee"].ToString();
            }
        }   

        else
            {
                TextBox6.Text = 600.ToString();
            
            }
        TextBox6.Text = 500.ToString();

        con.Close();

    }


    }
