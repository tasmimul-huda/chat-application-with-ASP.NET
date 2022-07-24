using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class ImageAdd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserDB.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void btn_1(object sender, EventArgs e)
    {

        if (!FileUpload1.HasFile)
        {
            Label1.Visible = true;
            Label1.Text = "Please Select Image File";

        }
        else
        {
           
            int length = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[length];

            FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

            try
            {
                SqlCommand com = new SqlCommand("insert into ImageTotable "
                  + "(myphoto,name) values (@photo, @name)", con);
                com.Parameters.AddWithValue("@photo", pic);
                com.Parameters.AddWithValue("@name", TextBox1.Text);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;
                Label1.Text = "Image Uploaded Sucessfully";
            }
            finally
            {
                con.Close();
            }
        }

    }
}