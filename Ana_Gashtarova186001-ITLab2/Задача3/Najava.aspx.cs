using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2Zad3
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            if (txtLozinka.Text=="mp")
            {
                Session["korisnik"] = txtKorisnik.Text;
                Response.Redirect("GlavnaStranica.aspx");
            }
            else
            {
                if (ViewState["obid"] == null)
                    ViewState["obid"] = 1;
                else
                    ViewState["obid"] = Convert.ToInt32(ViewState["obid"]) + 1;
                if (Convert.ToInt32(ViewState["obid"])>3)
                {
                    btnPodnesi.Enabled = false;
                    lblObidi.Text = "Nadminata e kvotata na obidi!!!";
                }
                else
                lblObidi.Text = "Obidi: "+ViewState["obid"].ToString();
            }
        }
    }
}