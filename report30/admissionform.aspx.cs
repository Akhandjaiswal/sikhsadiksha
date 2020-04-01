using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class admissionform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            ImageButton2.Visible = false;
           ImageButton1.Visible = true;
        }
        else
        {
           // ImageButton1.Visible = false;
            ImageButton2.Visible = true;
        }
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\Schooldb.accdb;Persist Security Info=True");
        OleDbCommand cmdd = new OleDbCommand();
        cmdd.Connection = con;
        con.Open();


        cmdd.CommandText = " insert into admission (Enroll_No, Student_Name, DOA, Student_Photo, Class, DOB, Adhar_ID, Gender, Catagory, Religion, Nationality, Fathers_Name, F_Occupation, Mothers_Name, M_Occupation, Mobile_No, Email_ID, Gardians_Name, Pr_Address, Pr_City, Pr_State, Pr_District, Pr_Pin_Code, Cr_Address, Cr_City, Cr_State, Cr_District, Cr_Pin_Code, X_Class, X_Passing_Year, X_School_Name, X_Total_Marks, X_Obtained_Marks, csec) values (@Enroll_No, @Student_Name, @DOA, @Student_Photo, @Class,  @DOB, @Adhar_ID, @Gender, @Catagory, @Religion, @Nationality, @Fathers_Name, @F_Occupation, @Mothers_Name, @M_Occupation, @Mobile_No, @Email_ID, @Gardians_Name, @Pr_Address, @Pr_City, @Pr_State, @Pr_District, @Pr_Pin_Code, @Cr_Address, @Cr_City, @Cr_State, @Cr_District, @Cr_Pin_Code, @X_Class, @X_Passing_Year, @X_School_Name, @X_Total_Marks, @X_Obtained_Marks, @csec)";

        //cmdd.Parameters.AddWithValue("@Enroll_No", TextBox5.Text);        

        Label3.Text = TextBox27.Text + TextBox3.Text;

        cmdd.Parameters.AddWithValue("@Enroll_No", Label3.Text);




        cmdd.Parameters.AddWithValue("@Student_Name", TextBox1.Text);
        cmdd.Parameters.AddWithValue("@DOA", TextBox27.Text);


        string photopath = Upload();


        cmdd.Parameters.AddWithValue("@Student_Photo", photopath);
        cmdd.Parameters.AddWithValue("@Class", DropDownList4.SelectedItem.Value);
        // cmdd.Parameters.AddWithValue("@Section", TextBox30.Text);
        cmdd.Parameters.AddWithValue("@DOB", TextBox3.Text);
        cmdd.Parameters.AddWithValue("@Adhar_ID", TextBox4.Text);
        cmdd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Value);
        cmdd.Parameters.AddWithValue("@Catagory", TextBox5.Text);



        cmdd.Parameters.AddWithValue("@Religion", TextBox26.Text);
        cmdd.Parameters.AddWithValue("@Nationality", DropDownList1.SelectedItem.Value);
        cmdd.Parameters.AddWithValue("@Fathers_Name", TextBox6.Text);
        cmdd.Parameters.AddWithValue("@F_Occupation", TextBox7.Text);
        cmdd.Parameters.AddWithValue("@Mothers_Name", TextBox8.Text);
        cmdd.Parameters.AddWithValue("@M_Occupation", TextBox9.Text);


        cmdd.Parameters.AddWithValue("@Mobile_No", TextBox10.Text);
        cmdd.Parameters.AddWithValue("@Email_ID", TextBox11.Text);
        cmdd.Parameters.AddWithValue("@Gardians_Name", TextBox12.Text);



        cmdd.Parameters.AddWithValue("@Pr_Address", TextBox32.Text);
        cmdd.Parameters.AddWithValue("@Pr_City", TextBox13.Text);
        cmdd.Parameters.AddWithValue("@Pr_State", DropDownList3.SelectedItem.Value);
        cmdd.Parameters.AddWithValue("@Pr_District", TextBox28.Text);
        cmdd.Parameters.AddWithValue("@Pr_Pin_Code", TextBox14.Text);



        cmdd.Parameters.AddWithValue("@Cr_Address", TextBox33.Text);
        cmdd.Parameters.AddWithValue("@Cr_City", TextBox15.Text);
        cmdd.Parameters.AddWithValue("@Cr_State", DropDownList2.SelectedItem.Value);
        cmdd.Parameters.AddWithValue("@Cr_District", TextBox29.Text);
        cmdd.Parameters.AddWithValue("@Cr_Pin_Code", TextBox16.Text);




        cmdd.Parameters.AddWithValue("@X_Class", TextBox17.Text);
        cmdd.Parameters.AddWithValue("@X_Passing_Year", TextBox18.Text);
        cmdd.Parameters.AddWithValue("@X_School_Name", TextBox19.Text);
        cmdd.Parameters.AddWithValue("@X_Total_Marks", TextBox20.Text);
        cmdd.Parameters.AddWithValue("@X_Obtained_Marks", TextBox31.Text);
        cmdd.Parameters.AddWithValue("@csec", TextBox34.Text);

        /*cmdd.Parameters.AddWithValue("@Gardians_Name", TextBox12.Text);
        cmdd.Parameters.AddWithValue("@Email_ID", TextBox11.Text);*/



        cmdd.ExecuteNonQuery();
        con.Close();

        Session["enrollno"] = Label3.Text;


        Session["DOBirth"] = TextBox3.Text;
        Session["Sname"] = TextBox1.Text;
        Session["Fname"] = TextBox6.Text;
        Session["Cls"] = DropDownList4.SelectedItem.Value;
        Session["Csection"] = TextBox34.Text;


        Response.Redirect("SetStudentFee.aspx");
    }





    public string Upload()
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" + TextBox1.Text + TextBox3.Text + ".jpg"));
            string Image = "~/Images/" + TextBox1.Text + TextBox3.Text + ".jpg";
            return Image;


            //  Label1.Text = "Image Uploaded";
            // Label1.ForeColor = System.Drawing.Color.ForestGreen;

        }

        else
        {
            // Label1.Text = "Please Upload your Image";
            //Label1.ForeColor = System.Drawing.Color.Red;
            String Image = "Not Uploaded";
            return Image ;
        }


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admissionform.aspx");
    }

    protected void filladdress_CheckedChanged(object sender, EventArgs e)
    {


        Label26.Text = "Field";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.Visible = false;

        ImageButton2.Visible = true;
           

        TextBox33.Text = TextBox32.Text;
        TextBox15.Text = TextBox13.Text;
        DropDownList2.SelectedValue = DropDownList3.SelectedValue;


        TextBox29.Text = TextBox28.Text;
        TextBox16.Text = TextBox14.Text;


    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.Visible = true;
        ImageButton2.Visible = false;
    }
}