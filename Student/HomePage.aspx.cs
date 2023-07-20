using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Flex.DAL;

namespace Flex.Student
{
    public partial class HomePage : System.Web.UI.Page
    {
        public DataTable stdinfo { get; set; }
        public string stdid;
        protected void Page_Load(object sender, EventArgs e)
        {
            stdid = (string)Session["username"];
            

           
            LoadGrid(stdid);
        }
        
        protected void LoadGrid(string id)
        {
            myDAL obj = new myDAL();
            

            stdinfo = obj.displayStudent(id);


        }

        
    }
}