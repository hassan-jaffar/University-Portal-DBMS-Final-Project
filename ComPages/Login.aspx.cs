using Flex.DAL;
using Flex.Student;
using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.ComPages
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginToAccount(object sender, EventArgs e)
        {
            string name = username.Text;
            string pass = password.Text;
            DataTable DT = new DataTable();

            myDAL obj = new myDAL();

            int found = obj.login(name, pass);

            if(found == 1)
            {
                Session["username"] = name;
                Response.Redirect("../Student/HomePage.aspx");
            }
            if (found == 2)
            {
                Session["username"] = name;
                Response.Redirect("../Teacher/TeacherHome.aspx");
            }

            else
            {
                output.Text = "Invalid credentials";
                username.Text = "";
                password.Text = "";



            }
        }

    }
}