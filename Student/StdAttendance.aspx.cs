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
    public partial class StdAttendance : System.Web.UI.Page
    {
        public DataTable regcourses { get; set; }
        public DataTable marks { get; set; }
        public DataTable attendance { get; set; }

        public int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = (string)Session["username"];
            LoadPage(id, sender.ToString());
        }

        public void LoadPage(string id, string str)
        {

            myDAL obj = new myDAL();

            regcourses = obj.displayCourses(id);
            marks = obj.displayMarks(id);
            attendance = obj.displayAttendance(id, str);





        }
    }
}