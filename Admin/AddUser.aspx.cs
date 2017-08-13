using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class AddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void AddUser1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(CS))
        {
            String user1 = userID.Text;
            String pass1 = password.Text;
            String role1 = role.SelectedValue;
            String query = "INSERT INTO loginInfo (userID,password,role) VALUES('" + user1 + "','" + pass1 + "','" + role1 + "')";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            
            int rows = cmd.ExecuteNonQuery();
            if (rows == 1)
            {
                signinError.Text = "User Added Successfully";
            }
            else
                signinError.Text = "User Id or Password Don't Match";
        }
    }
}