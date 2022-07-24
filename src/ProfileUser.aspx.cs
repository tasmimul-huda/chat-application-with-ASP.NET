using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ProfileUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserDB.mdf;Integrated Security=True");
    public string user_name = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        //Response.Write("Database Connected");
        if (User.Identity.IsAuthenticated)
        {
            //Response.Write("Authorized: ");
            //Response.Write(User.Identity.Name);
            user_name = User.Identity.Name;
        }
        else
        {
            Response.Redirect("login.aspx");
        }

        disp_image();
        disp_column();
        //Response.Write("DISP DATA");

    }

    public void disp_data()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from UserDatabase";

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    public void disp_image()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT Profile FROM UserDatabase WHERE Username = '" + user_name + "'";

        //con.Open();
        byte[] bytes = (byte[])cmd.ExecuteScalar();
        string strBase64 = Convert.ToBase64String(bytes, 0, bytes.Length);
        Image1.ImageUrl = "data:Image/jpg;base64," + strBase64;
        Image1.Visible = true;
    }

    public void disp_column()
    {
        
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT Username, Email, Password, Country FROM UserDatabase WHERE Username = '"+user_name+"'";

        cmd.ExecuteNonQuery();

        using (SqlDataReader sdr = cmd.ExecuteReader())
        {
            sdr.Read();
            TextBoxuser22.Text = sdr["Username"].ToString();
            TextBoxEmail22.Text = sdr["Email"].ToString();
            TextBoxCountry22.Text = sdr["Country"].ToString();
            TextBoxPass22.Text = sdr["Password"].ToString();
            TextBoxuser22.DataBind();
            TextBoxEmail22.DataBind();
            TextBoxCountry22.DataBind();
            TextBoxPass22.DataBind();
        }

    }

    protected void update_Click(object sender, EventArgs e)
    {

       SqlCommand cmd = con.CreateCommand();
       cmd.CommandType = CommandType.Text;
       cmd.CommandText = "update UserDatabase set Password = '" + TextBoxNewPass.Text + "' where Username='" + user_name + "'";
       cmd.ExecuteNonQuery();

        // TextBoxuser.Text = "";
        // TextBoxEmail.Text = "";
        //TextBoxCountry.Text = "";
        // CountryListID.Text = "";
        TextBoxNewPass.Text = "";
        //Response.Write("DISP COLUMN");
        //Response.Write(TextBoxEmail.Text);

        //disp_data();
    }


    protected void insert_Click(object sender, EventArgs e)
    {

    }

    protected void delete_Click(object sender, EventArgs e)
    {

    }

    protected void view_Click(object sender, EventArgs e)
    {

    }

    protected void firstname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
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
                con.Close();
                //SqlCommand com = new SqlCommand("insert into UserDatabase"
               //   + "(Profile) values (@photo) where Username='" + user_name + "'", con);
               // com.Parameters.AddWithValue("@photo", pic);

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update UserDatabase set Profile = '" + pic + "' where Username='" + user_name + "'";
                con.Open();
                cmd.ExecuteNonQuery();
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