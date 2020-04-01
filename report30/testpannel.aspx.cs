using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;


public partial class testpannel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       


        Label13.Text = "555555";

        Label7.Text = (Session["enrl"]).ToString();
        Label8.Text = (Session["stdname"]).ToString();
        Label10.Text = (Session["class"]).ToString();
        Label11.Text = (Session["sec"]).ToString();
        Label9.Text = (Session["fathname"]).ToString();


        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True");


        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;


        con.Open();
        //String OleDbSelectQuery = "SELECT * FROM feedata WHERE enrollno = " + Convert.ToString(Label22.Text);
        String senrl = (Session["enrl"]).ToString();

        String OleDbSelectQuery = "SELECT * FROM Fee_record WHERE enroll_no =  '" + senrl + "' ";

        OleDbCommand cmd = new OleDbCommand(OleDbSelectQuery, con);


        // Label6.Text = Label22.Text;


        OleDbDataReader dr = cmd.ExecuteReader();
           if (dr.Read())
            {

                if (dr["2019april"].ToString() == "1")
                {
                    CheckBoxList1.Items[0].Selected = true;
                    CheckBoxList1.Items[0].Enabled = false;
                    CheckBoxList1.DataBind();
                }


                if (dr["2019may"].ToString() == "1")
                {
                    CheckBoxList1.Items[1].Selected = true;
                    CheckBoxList1.Items[1].Enabled = false;
                    CheckBoxList1.DataBind();
                }


                if (dr["2019june"].ToString() == "1")
                {
                    CheckBoxList1.Items[2].Selected = true;
                    CheckBoxList1.Items[2].Enabled = false;
                    CheckBoxList1.DataBind();
                }

                if (dr["2019july"].ToString() == "1")
                {
                    CheckBoxList1.Items[3].Selected = true;
                    CheckBoxList1.Items[3].Enabled = false;
                    CheckBoxList1.DataBind();
                }

                if (dr["2019august"].ToString() == "1")
                {
                    CheckBoxList1.Items[4].Selected = true;
                    CheckBoxList1.Items[4].Enabled = false;
                    CheckBoxList1.DataBind();
                }

                if (dr["2019september"].ToString() == "1")
                {
                    CheckBoxList1.Items[5].Selected = true;
                    CheckBoxList1.Items[5].Enabled = false;
                    CheckBoxList1.DataBind();
                }
                if (dr["2019october"].ToString() == "1")
                {
                    CheckBoxList1.Items[6].Selected = true;
                    CheckBoxList1.Items[6].Enabled = false;
                    CheckBoxList1.DataBind();
                }

                if (dr["2019november"].ToString() == "1")
                {
                    CheckBoxList1.Items[7].Selected = true;
                    CheckBoxList1.Items[7].Enabled = false;
                    CheckBoxList1.DataBind();
                }


                if (dr["2019december"].ToString() == "1")
                {
                    CheckBoxList1.Items[8].Selected = true;
                    CheckBoxList1.Items[8].Enabled = false;
                    CheckBoxList1.DataBind();
                }

                if (dr["2020january"].ToString() == "1")
                {
                    CheckBoxList1.Items[9].Selected = true;
                    CheckBoxList1.Items[9].Enabled = false;
                    CheckBoxList1.DataBind();
                }

                if (dr["2020february"].ToString() == "1")
                {
                    CheckBoxList1.Items[10].Selected = true;
                    CheckBoxList1.Items[10].Enabled = false;
                    CheckBoxList1.DataBind();
                }

                if (dr["2020march"].ToString() == "1")
                {
                    CheckBoxList1.Items[11].Selected = true;
                    CheckBoxList1.Items[11].Enabled = false;
                    CheckBoxList1.DataBind();
                }
                if (dr["2019exam1"].ToString() == "1")
                {
                    CheckBoxList2.Items[0].Selected = true;
                    CheckBoxList2.Items[0].Enabled = false;
                    CheckBoxList2.DataBind();
                }
                if (dr["2019exam2"].ToString() == "1")
                {
                    CheckBoxList2.Items[1].Selected = true;
                    CheckBoxList2.Items[1].Enabled = false;
                    CheckBoxList2.DataBind();
                }
                if (dr["2019exam3"].ToString() == "1")
                {
                    CheckBoxList2.Items[2].Selected = true;
                    CheckBoxList2.Items[2].Enabled = false;
                    CheckBoxList2.DataBind();
                }




            }

            else
                Label1.Text = "Not Connected";






            con.Close();








        


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True" );
        

        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;
        con.Open();


        cmdd.CommandText = " insert into Trans (Enrollno, Name, Class, csec, Fname, feemonth, Paydate, Paytime, Pre_balance, Monthly_fee, Exam_name, Exam_fee, Computer_fee, Transport_fee, Other_fee, Reason, Total_fee, Discount, Payable_amt, Total_paid, Due) values (@Enrollno, @Name, @Class, @csec, @Fname, @feemonth, @Paydate, @Paytime, @Pre_balance, @Monthly_fee, @Exam_name, @Exam_fee, @Computer_fee, @Transport_fee, @Other_fee, @Reason, @Total_fee, @Discount, @Payable_amt, @Total_paid, @Due)";

        cmdd.Parameters.AddWithValue("@Enrollno", Label7.Text);
        cmdd.Parameters.AddWithValue("@Name", Label8.Text);
        cmdd.Parameters.AddWithValue("@Class", Label10.Text);
        cmdd.Parameters.AddWithValue("@csec ", Label11.Text);
        cmdd.Parameters.AddWithValue("@Fname", Label9.Text);


        string fm = "";
        foreach (ListItem lst in CheckBoxList1.Items)
        {
            if (lst.Selected == true)
            {
                fm = fm + " " + lst.Text;
            }
        }  

        cmdd.Parameters.AddWithValue("@feemonth",  fm);
       
        cmdd.Parameters.AddWithValue("@Paydate", Label13.Text);
        cmdd.Parameters.AddWithValue("@Paytime", Label15.Text);
        cmdd.Parameters.AddWithValue("@Pre_balance", Label7.Text);
        cmdd.Parameters.AddWithValue("@Monthly_fee", Label21.Text);
        cmdd.Parameters.AddWithValue("@Exam_name", Label23.Text);
        cmdd.Parameters.AddWithValue("@Exam_fee", Label37.Text);
        cmdd.Parameters.AddWithValue("@Computer_fee", Label35.Text);
        cmdd.Parameters.AddWithValue("@Transport_fee", Label19.Text);
        cmdd.Parameters.AddWithValue("@Other_fee", TextBox1.Text);
        cmdd.Parameters.AddWithValue("@Reason", TextBox2.Text);
        cmdd.Parameters.AddWithValue("@Total_fee", Label31.Text);


        //--------------------------------

        string dsc;

        dsc = TextBox3.Text;


        string abc = "ram is going to home";

        dsc = abc;


        //-------------------------------

        cmdd.Parameters.AddWithValue("@Discount", dsc);
        cmdd.Parameters.AddWithValue("@Payable_amt", Label33.Text);
        cmdd.Parameters.AddWithValue("@Total_paid", TextBox4.Text);
        cmdd.Parameters.AddWithValue("@Due", Label32.Text);

      

        cmdd.ExecuteNonQuery();
        con.Close();
        /*  GridView1.DataBind();
        TextBox1.Text = "";
        TextBox2.Text = "";  */
    }
    protected void Label13_Load(object sender, EventArgs e)
    {
        Label13.Text = DateTime.Now.ToShortDateString();
    }
    protected void Label15_Load(object sender, EventArgs e)
    {
        Label15.Text = DateTime.Now.ToLongTimeString();
    }


    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True");


        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;


        con.Open();
        //String OleDbSelectQuery = "SELECT * FROM feedata WHERE enrollno = " + Convert.ToString(Label22.Text);
        String senrl = (Session["enrl"]).ToString();

        String OleDbSelectQuery = "SELECT * FROM Setstudentfee WHERE Enroll_No =  '" + senrl + "' ";

        OleDbCommand cmd = new OleDbCommand(OleDbSelectQuery, con);





        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string mf = dr["Monthly_Fee"].ToString();

            int intmf = Convert.ToInt32(mf);

            var selectedchk = CheckBoxList1.Items.Cast<ListItem>().Where(item => item.Selected).Count();
            var allchk = CheckBoxList1.Items.Cast<ListItem>().Count();
            var enabledchk = CheckBoxList1.Items.Cast<ListItem>().Where(item => item.Enabled).Count();
            var disabledchk = allchk - enabledchk;
            var payablemonth = selectedchk - disabledchk;
            intmf = intmf * payablemonth;
            Label21.Text = (intmf).ToString();



            string cf = dr["Computer_Fee"].ToString();
            int intcf = Convert.ToInt32(cf);
            intcf = intcf * payablemonth;
            Label35.Text = (intcf).ToString();



            string tf = dr["Tr_Fee"].ToString();
            int inttf = Convert.ToInt32(cf);
            intcf = inttf * payablemonth;
            Label19.Text = (intcf).ToString();


        }

        else
            Label1.Text = "Not Connected";




        con.Close();






    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        
    }
    protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
    {


        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True");


        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;


        con.Open();
        //String OleDbSelectQuery = "SELECT * FROM feedata WHERE enrollno = " + Convert.ToString(Label22.Text);
        String senrl = (Session["enrl"]).ToString();

        String OleDbSelectQuery = "SELECT * FROM Setstudentfee WHERE Enroll_No =  '" + senrl + "' ";

        OleDbCommand cmd = new OleDbCommand(OleDbSelectQuery, con);





        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string mf = dr["Monthly_Fee"].ToString();

            int intmf = Convert.ToInt32(mf);

            var selectedchk = CheckBoxList1.Items.Cast<ListItem>().Where(item => item.Selected).Count();
            var allchk = CheckBoxList1.Items.Cast<ListItem>().Count();
            var enabledchk = CheckBoxList1.Items.Cast<ListItem>().Where(item => item.Enabled).Count();
            var disabledchk = allchk - enabledchk;
            var payablemonth = selectedchk - disabledchk;
            intmf = intmf * payablemonth;
            Label21.Text = (intmf).ToString();



            string cf = dr["Computer_Fee"].ToString();
            int intcf = Convert.ToInt32(cf);
            intcf = intcf * payablemonth;
            Label35.Text = (intcf).ToString();



            string tf = dr["Tr_Fee"].ToString();
            int inttf = Convert.ToInt32(cf);
            intcf = inttf * payablemonth;
            Label19.Text = (intcf).ToString();


        }

        else
            Label1.Text = "Not Connected";




        con.Close();







    }









    protected void btnUpdate1_Click(object sender, EventArgs e)
    {
        lbl1.Text = DateTime.Now.ToLongTimeString();
        lbl2.Text = DateTime.Now.ToLongTimeString();


        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True");


        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;


        con.Open();
        //String OleDbSelectQuery = "SELECT * FROM feedata WHERE enrollno = " + Convert.ToString(Label22.Text);
        String senrl = (Session["enrl"]).ToString();

        String OleDbSelectQuery = "SELECT * FROM Setstudentfee WHERE Enroll_No =  '" + senrl + "' ";

        OleDbCommand cmd = new OleDbCommand(OleDbSelectQuery, con);





        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string mf = dr["Monthly_Fee"].ToString();

            int intmf = Convert.ToInt32(mf);

            var selectedchk = CheckBoxList1.Items.Cast<ListItem>().Where(item => item.Selected).Count();
            var allchk = CheckBoxList1.Items.Cast<ListItem>().Count();
            var enabledchk = CheckBoxList1.Items.Cast<ListItem>().Where(item => item.Enabled).Count();
            var disabledchk = allchk - enabledchk;
            var payablemonth = selectedchk - disabledchk;
            intmf = intmf * payablemonth;
            Label21.Text = (intmf).ToString();



            string cf = dr["Computer_Fee"].ToString();
            int intcf = Convert.ToInt32(cf);
            intcf = intcf * payablemonth;
            Label35.Text = (intcf).ToString();



            string tf = dr["Tr_Fee"].ToString();
            int inttf = Convert.ToInt32(cf);
            intcf = inttf * payablemonth;
            Label19.Text = (intcf).ToString();


        }

        else
            Label1.Text = "Not Connected";






        con.Close();






    }
    protected void btnUpdate2_Click(object sender, EventArgs e)
    {
        lbl1.Text = DateTime.Now.ToLongTimeString();
        lbl2.Text = DateTime.Now.ToLongTimeString();




    }
}