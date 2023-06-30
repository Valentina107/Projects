using Automobili5.Classes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Automobili5
{
    public partial class Lista_Annunci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillAnnuncioGrid();
                GridView1.DataBind();

            }
        }


          private void FillAnnuncioGrid() {

            try
            {
                //connessione al db
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["Automobili"].ToString();
                connection.Open();

                //recupero dati dal db
                SqlCommand comando = new SqlCommand();
                comando.CommandText = "select * from Annuncio Inner Join Automobili ON Annuncio.cod_auto=Automobili.cod_auto Inner Join Utente ON Annuncio.utente = Utente.id_utente";
                comando.Connection = connection;  

                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    Automobili auto = new Automobili();
                     

                    auto.cod_auto = Convert.ToInt32(reader["cod_auto"]);
                    auto.marca = reader["marca"].ToString();
                    auto.kilometri = Convert.ToDecimal(reader["Kilometri"]);
                    auto.kw = Convert.ToInt32(reader["Kw"]);
                    auto.cambio = reader["cambio"].ToString();
                    auto.data_fabbricazione = DateTime.Parse(reader["data_fabbricazione"].ToString());
                    auto.carburante = reader["carburante"].ToString();
                    auto.foto = reader["foto"].ToString();

                    auto.id_annuncio = Convert.ToInt32(reader["id_annuncio"]);
                    auto.utente = Convert.ToInt32(reader["utente"]);
                    auto.cod_auto = Convert.ToInt32(reader["cod_auto"]);
                    auto.titolo = reader["titolo"].ToString();
                    auto.data = DateTime.Parse(reader["data"].ToString());
                   
                    auto.paese = reader["paese"].ToString();
                    auto.città = reader["città"].ToString();
                    auto.descrizione = reader["descrizione"].ToString();
                    auto.indirizzo = reader["indirizzo"].ToString();
                    auto.sono_un_una = reader["sono_un_una"].ToString();
                    auto.prezzo = Convert.ToDecimal(reader["prezzo"]);

                    auto.id_utente = Convert.ToInt32(reader["id_utente"]);
                    auto.nome = reader["nome"].ToString();
                    auto.cognome = reader["cognome"].ToString();
                    auto.email = reader["email"].ToString();
                    auto.password = reader["password"].ToString();
                    auto.telefono = reader["telefono"].ToString();
                    auto.ruolo = reader["ruolo"].ToString();

                    Automobili.lista_auto.Add(auto);


                }
                GridView1.DataSource = Automobili.lista_auto;
                GridView1.DataBind();

                connection.Close();
                GridView1.DataBind();
            }

            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
             
            }


        }

        //aggiorna annuncio 
        protected void Button1_Click(object sender, EventArgs e)
        {

        }




        //cancella annuncio
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["Automobili"].ToString();
                connection.Open();

                SqlCommand comando = new SqlCommand();
                comando.CommandText = "DELETE from Annuncio where id_annuncio='" + TextBox9.Text.Trim() + "'";    
                comando.Connection = connection;

      
                comando.ExecuteNonQuery();
                connection.Close();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void Button5_Click(object sender, EventArgs e)
        { }

      }
    }
