using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Signin_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(CS))
        {
            String user1 = userID.Text;
            String pass1 = password.Text;
            String role1 = role.SelectedValue;
            String query = "SELECT * FROM loginInfo WHERE userID='" + user1 + "' AND password='" + pass1 + "' AND role='" + role1 + "'";
            SqlCommand cmd = new SqlCommand(query,conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();            
            if (reader.HasRows)
            {
                Session["userID"] = user1;
                Session["role"] = role1;

                if (role1 == "Administrator")
                    Response.Redirect("Administrator.aspx",false);
                else if (role1 == "Reporter")
                    Response.Redirect("Reporter.aspx", false);
                else if (role1 == "Editor")
                    Response.Redirect("Editor.aspx", false);
                else if (role1 == "Senior Editor")
                    Response.Redirect("Senior.aspx", false);
                else if (role1 == "Management")
                    Response.Redirect("Management.aspx", false);
                else if (role1 == "Printing")
                    Response.Redirect("Printing.aspx", false);
                else if (role1 == "Store")
                    Response.Redirect("Store.aspx", false);
            }
            else
                signinError.Text = "User Id or Password Don't Match";
        }
    }
}