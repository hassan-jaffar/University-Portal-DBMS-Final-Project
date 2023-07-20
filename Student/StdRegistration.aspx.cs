using Flex.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Student
{
    public partial class StdRegistration : System.Web.UI.Page
    {
        public DataTable stdinfo { get; set; }
        int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            stdinfo = obj.getCourses();
            //int i = 0;


            if (!IsPostBack)
            {
                foreach (DataRow row in stdinfo.Rows)
                {

                    //ListItem item = new ListItem((string)row["crsname"], (string)row["crsname"]);
                    DropDownList1.Items.Add((string)row["crsname"]);

                }
            }
            



            





        }

        protected void register(object sender,  EventArgs e)
       {
            myDAL obj = new myDAL();
            string stdid = (string)Session["username"];
            string crsname = (string)DropDownList1.SelectedValue;
            output.Text = obj.registerCourse(stdid,crsname);
            
        }

        protected void drop(object sender,  EventArgs e)
        {
            myDAL obj = new myDAL();
            string stdid = (string)Session["username"];
            string crsname = (string)DropDownList1.SelectedValue;
            output.Text =obj.dropCourse(stdid,crsname);
            

        }
    }
}