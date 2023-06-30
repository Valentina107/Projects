using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Automobili5.Visualizza_Annuncio;

namespace Automobili5
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registrati(object sender, EventArgs e)
        {
            try {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["Automobili"].ToString();
                connection.Open();

                SqlCommand comando = new SqlCommand();
                comando.CommandText = "insert into Utente(nome, cognome, email, password, telefono, ruolo) values(@nome, @cognome, @email, @password, @telefono, @ruolo)";
                comando.Connection = connection;

                comando.Parameters.AddWithValue("@nome", TextBox1.Text);
                comando.Parameters.AddWithValue("@cognome", TextBox2.Text);
                comando.Parameters.AddWithValue("@email", TextBox8.Text);
                comando.Parameters.AddWithValue("@password", TextBox10.Text);
                comando.Parameters.AddWithValue("@telefono", TextBox3.Text);
                comando.Parameters.AddWithValue("@ruolo", TextBox4.Text);
               
                comando.ExecuteNonQuery();
      

                connection.Close();
                Response.Write("<script>alert('Registrazione effetuata con successo');</script>");
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }   
        
        
        }

    }
}