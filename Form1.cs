using MySql.Data.MySqlClient;
namespace Verifica_Zanon_Leonardo_2024_01_29
{
    public partial class Form1 : Form
    {
        string ConnectionString = "server=127.0.0.1;" +
                                    "database=verificainventariozanon;" +
                                    "uid=root;";
        public Form1()
        {
            InitializeComponent();
            PopolaTabella();
        }
        private void PopolaTabella()
        {
            dataGridView1.Rows.Clear();
            MySqlConnection connessione = new MySqlConnection(ConnectionString);
            try
            {
                connessione.Open();
                string query = "SELECT * FROM prodotti";
                MySqlCommand cmd = new MySqlCommand(query, connessione);
                MySqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    dataGridView1.Rows.Add(
                        dr.GetString("CodiceFarnell"),
                        dr.GetString("CodiceProduttore"),
                        dr.GetString("Quantità"),
                        dr.GetInt32("Prezzo").ToString()
                    );
                }

                connessione.Close();
            }
            catch
            {
                MessageBox.Show("Impossibile stabilire una connessione al DB");
            }
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string id = dataGridView1.CurrentRow.Cells[0].Value.ToString();

            FormModifica formModifica = new FormModifica(id);

            formModifica.ShowDialog();

            PopolaTabella();
        }

        private void buttonCerca_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.Clear();

            MySqlConnection cnn = new MySqlConnection(ConnectionString);
            string cerca = textBox1.Text;
            try
            {
                cnn.Open();

                string query = $"SELECT * FROM prodotti WHERE CodiceFarnell LIKE '%{cerca}%' " +
                    $"OR Descrizione LIKE '%{cerca}%' OR Produttore LIKE '%{cerca}%' OR CodiceProduttore LIKE '%{cerca}%' " +
                   $"OR Quantità LIKE '%{cerca}%' OR Prezzo LIKE '%{cerca}%'";

                MySqlCommand cmd = new MySqlCommand(query, cnn);

                MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    dataGridView1.Rows.Add(
                        reader.GetString("CodiceFarnell"),
                        reader.GetString("CodiceProduttore"),
                        reader.GetString("Quantità"),
                        reader.GetInt32("Prezzo").ToString()
                    );
                }

                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("impossibile connettersi");
            }
        }
    }
}