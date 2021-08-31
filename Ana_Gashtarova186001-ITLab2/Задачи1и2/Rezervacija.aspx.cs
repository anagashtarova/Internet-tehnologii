using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Rezervacija : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] meseci = {"Јануари","Февруари","Март","Април","Мај","Јуни","Јули","Август","Септември","Октомври","Ноември","Декември"};
                ddlMesec.DataSource = meseci;
                ddlMesec.DataBind();

                for (int i=1;i<=31;i++)
                {
                    ddlDen.Items.Add(i.ToString());
                }

                ddlGodina.Items.Add(DateTime.Now.Year.ToString());
                ddlGodina.Items.Add(DateTime.Now.AddYears(1).Year.ToString());
                ddlGodina.Items.Add(DateTime.Now.AddYears(2).Year.ToString());
                ddlGodina.Items.Add(DateTime.Now.AddYears(3).Year.ToString());
                ddlGodina.Items.Add(DateTime.Now.AddYears(4).Year.ToString());

                for (int j=0; j<24; j++)
                {
                    string vreme;
                    if (j < 10)
                        vreme = "0" + j.ToString()+":00";
                    else
                        vreme = j.ToString() + ":00";
                    ddlVreme.Items.Add(vreme);
                }

                rblZona.Items.Add("Непушачи");
                rblZona.Items.Add("Пушачи");

                rblKlasa.Items.Add("Економска");
                rblKlasa.Items.Add("Бизнис");

                cblPosluga.Items.Add("Пијалок");
                cblPosluga.Items.Add("Кафе");
                cblPosluga.Items.Add("Оброк");

                lstSredstvo.Items.Add(new ListItem("Авион","airplane.jpg"));
                lstSredstvo.Items.Add(new ListItem("Воз","train.jpg"));

            }

        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            lblSredstvo.Text = lstSredstvo.SelectedItem.Text;
            lblOd.Text = ddlOd.SelectedItem.Text;
            lblDo.Text = ddlDo.SelectedItem.Text;

            lblZona.Text = rblZona.SelectedItem.Text;
            lblKlasa.Text = rblKlasa.SelectedItem.Text;

            lblVreme.Text = ddlDen.SelectedItem.Text+"."+(Convert.ToInt32(ddlMesec.SelectedIndex)+1).ToString()+"."+ddlGodina.SelectedItem.Text+" во "+ddlVreme.SelectedItem.Text+" часот";

            lblPosluga.Text = "";

            foreach (ListItem li in cblPosluga.Items)
            {
                if (li.Selected)
                {
                    lblPosluga.Text += li.Text + " ";
                }
            }

            imgSlika.ImageUrl = lstSredstvo.SelectedItem.Value;

        }
    }
}