using Flex.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.ComPages
{
    public partial class Signup : System.Web.UI.Page
    {
        public DataTable stdinfo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUp(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            output.Text = obj.signup(name.Text,rollno.Text,cnic.Text,fname.Text,email.Text,password.Text,degree.Text,phone.Text,dob.Text,nation.Text,address.Text);
            

        }
    }
}