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
    public partial class StdFeedetail : System.Web.UI.Page
    {
        public DataTable stdinfo { get; set; }
        int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            stdinfo = obj.getChallans((string)Session["username"]);



            if (!IsPostBack)
            {
                foreach (DataRow row in stdinfo.Rows)
                {


                    DropDownList1.Items.Add((string)row["semNum"]);

                }
            }

        }
    }
}