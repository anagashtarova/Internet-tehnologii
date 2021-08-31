using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class WebFormLab2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kopce_Click(object sender, EventArgs e)
        {        
                Label1.Text = "Корисничката сметка за "+ime.Text+" "+prezime.Text+" е успешно креирана!";
        }
    }
}