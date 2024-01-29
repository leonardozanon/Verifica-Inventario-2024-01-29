using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Verifica_Zanon_Leonardo_2024_01_29
{
    public partial class FormModifica : Form
    {
        public string id_utente;
        public FormModifica()
        {
            InitializeComponent();
            id_utente = id_utente ;
            PopolaForm();
        }
        public void PopolaForm()
        {
            string ConnectionString = "server=127.0.0.1;" +
                                    "database=verificainventariozanon;" +
                                    "uid=root;";

            MySqlConnection connessione = new MySqlConnection(ConnectionString);
            try
            {
                connessione.Open();
                //string query = "SELECT * FROM utenti WHERE id = '" + id + "'";
                string query = $"SELECT * FROM prodotti WHERE CodiceFarnell = '{id_utente}'";
                MySqlCommand cmd = new MySqlCommand(query, connessione);
                MySqlDataReader dr = cmd.ExecuteReader();

                dr.Read();
                textBoxCodiceFarnell.Text = dr.GetString("Codice-Farnell");
                textBoxDescrizione.Text = dr.GetString("Descrizione");
                textBoxProduttore.Text = dr.GetString("Produttore");
                textBoxCodiceProduttore.Text = dr.GetString("CodiceProduttore");
                textBoxQuantita.Text = dr.GetString("Quantita");
                textBoxPrezzoUnitario.Text = dr.GetString("Prezzo");

                dr.Close();

                connessione.Close();
            }
            catch
            {
                MessageBox.Show("Impossibile stabilire una connessione al DB");
            }
            
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            string ConnectionString = "server=127.0.0.1;" +
                                    "database=anagrafica2iot;" +
                                    "uid=root;";
            MySqlConnection connessione = new MySqlConnection(ConnectionString);
            try
            {
                connessione.Open()


                string query = $"UPDATE utenti " +
                    $"SET " +
                    $"Nome = '{textBoxCodiceFarnell.Text}', " +
                    $"Cognome = '{textBoxDescrizione.Text}', " +
                    $"Cognome = '{textBoxProduttore.Text}', " +
                    $"Cognome = '{textBoxCodiceProduttore.Text}', " +
                    $"Cognome = '{textBoxQuantita.Text}', " +
                    $"DataNascita = '{textBoxPrezzoUnitario.ToString()}' " +
                    $"WHERE id = {id_utente}";
                MySqlCommand cmd = new MySqlCommand(query, connessione);
                cmd.ExecuteNonQuery();

                connessione.Close();
            }
            catch (Exception tipoErrore)
            {
                MessageBox.Show(tipoErrore.Message);
            }

            this.Close();
        }
    }
}
