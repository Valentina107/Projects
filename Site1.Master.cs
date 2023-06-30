using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Automobili5
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {              

                //nessun utente logato
                if (Session["email1"] == null)
                {
                    LinkButton1.Visible = true; //user login 
                    Logout.Visible = false;
                    LinkButton2.Visible = false;  //ListaAnunci
                    Hello.Visible = false;   //Hello user
                    LinkButton3.Visible = true; //Vendi Home
                    LinkButton4.Visible = false; //Vendi Utenti Logati 
                  
                    Label2.Text = "Utente non trovato... Username e/o password errati";
                }

                else if (Session["email1"].Equals("admin@gmail.com"))
                {
                  
                    LinkButton1.Visible = false; //user login 
                    Logout.Visible = true;
                    LinkButton2.Visible = true;  //ListaAnunci   
                    Hello.Visible = true; //Hello user
                    LinkButton3.Visible = false; //Vendi home
                    LinkButton4.Visible = true; //Vendi Utenti Logati 

                    Hello.Text = "Ciao " + Session["email1"].ToString();

                }

                else 
                {
                    LinkButton1.Visible = false; //user login 
                    Logout.Visible = true;
                    LinkButton2.Visible = false;  //ListaAnunci
                    Hello.Visible = true; //Hello user
                    LinkButton3.Visible = false; //Vendi Home 
                    LinkButton4.Visible = true; //Vendi Utenti Logati 

                    Hello.Text = "Ciao " + Session["email1"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        //lista annunci
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lista_Annunci.aspx");
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void Hello_Click(object sender, EventArgs e)
        {

        }

        //login
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        //Vendi utenti Logati
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vendi.aspx");
        }

        //Vendi home
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}