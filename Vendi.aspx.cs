using Automobili5.Classes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Automobili5
{
    public partial class Vendi : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

    
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                //string filepath = "~/auto/audiA1.jpg";
                //string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //FileUpload1.SaveAs(Server.MapPath("auto/" + filename));
                // filepath = "~/auto/" + filename;



                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["Automobili"].ToString();
                connection.Open();              

                SqlCommand comando = new SqlCommand();
                comando.CommandText = " insert into Automobili(marca, Kilometri, Kw, cambio, data_fabbricazione, carburante, foto) values( @marca, @Kilometri, @Kw, @cambio, @data_fabbricazione, @carburante, @foto)"+
                                      " insert into Annuncio(utente, cod_auto, titolo, data, paese, città, indirizzo, descrizione,  prezzo, sono_un_una) values(@utente, @cod_auto, @titolo, @data, @paese, @città, @indirizzo, @descrizione, @prezzo,  @sono_un_una)";

                 
                comando.Connection = connection;
                comando.Parameters.AddWithValue("@marca", DropDownList2.SelectedItem.Value);
                comando.Parameters.AddWithValue("@Kilometri", TextBox3.Text.Trim());
                comando.Parameters.AddWithValue("@kw", TextBox7.Text.Trim());
                comando.Parameters.AddWithValue("@cambio", DropDownList3.SelectedItem.Value);
                comando.Parameters.AddWithValue("@data_fabbricazione", TextBox4.Text.Trim());
                comando.Parameters.AddWithValue("@prezzo", TextBox2.Text.Trim());
                comando.Parameters.AddWithValue("@carburante", DropDownList1.SelectedItem.Value);
                comando.Parameters.AddWithValue("@foto", FileUpload1.FileName);

                comando.Parameters.AddWithValue("@utente",6);
                comando.Parameters.AddWithValue("@cod_auto", 44);
                comando.Parameters.AddWithValue("@titolo", TextBox1.Text.Trim());
                comando.Parameters.AddWithValue("@data", TextBox6.Text.Trim());
                comando.Parameters.AddWithValue("@paese", DropDownList5.SelectedItem.Value);
                comando.Parameters.AddWithValue("@città", DropDownList6.SelectedItem.Value);
                comando.Parameters.AddWithValue("@indirizzo", TextBox8.Text.Trim());
                comando.Parameters.AddWithValue("@descrizione", TextBox5.Text.Trim());
                comando.Parameters.AddWithValue("@sono_un_una", DropDownList4.Text.Trim());

        
                comando.ExecuteNonQuery(); 
                connection.Close();

                Response.Write("<script> alert('Annuncio aggiunto con successo'); </script>");
             

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

     

    

    }
}