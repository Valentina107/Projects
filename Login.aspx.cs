using Automobili5.Classes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Automobili5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string userName = TextBox1.Text;
                string password = TextBox2.Text;

                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["Automobili"].ToString();
                connection.Open();

                SqlCommand comando = new SqlCommand();
                comando.CommandText = "select * from Utente";
                comando.Connection = connection;
                SqlDataReader reader = comando.ExecuteReader();

                bool userFound= false;  
                while (reader.Read())
                {
                    Utente utente= new Utente();
                    Session["email1"] = userName;

                    if (userName == reader["email"].ToString() && password == reader["password"].ToString())
                    {
                        userFound = true;
                        Session["idUtente"] = reader.GetValue(0).ToString(); 

                 

                        if (userName == "admin@gmail.com"){                       

                            Response.Write("<script> alert('Login effetuato con successo'); </script>");
                            Response.Redirect("Vendi.aspx");

                        }

                        else{
                      
                            Response.Write("<script>alert('Login effetuato con successo');</script>");
                            Response.Redirect("Vendi.aspx");
                        }
                       
                        break;

                    }

                }

                if (!userFound){

                    Label1.Text = "Utente non trovato... Username e/o password errati";  
                }
               
                connection.Close();
           
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
}