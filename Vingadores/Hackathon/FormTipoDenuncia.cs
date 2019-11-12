using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SQLite;

namespace Hackathon
{
    public partial class FormTipoDenuncia : Form
    {
        public FormTipoDenuncia()
        {
            InitializeComponent();
            AddViolencias();
            AddOpDenuncia();
            
        }
        public static string TipoDenuncia;

        public void AddViolencias()
        {
            checkedListBox1.Items.Add("Pedofilia");
            checkedListBox1.Items.Add("Aliciamento de Menores - Tráfico");
            checkedListBox1.Items.Add("Aliciamento de Menores - Prostituição Infantil");
            checkedListBox1.Items.Add("Maus tratos");
            checkedListBox1.Items.Add("Abondono de menor");
            checkedListBox1.Items.Add("Outro");

        }

        public void AddOpDenuncia()
        {
            comboBox_numd.Items.Add("0");
            comboBox_numd.Items.Add("1");
            comboBox_numd.Items.Add("2 ou mais");

        }


        private void button1_Click(object sender, EventArgs e)
        {
            if (checkedListBox1.SelectedItem == null)
            {
                MessageBox.Show("Por favor, preencha todas as informações solicitadas.");
            }
            else
            {
               
                TipoDenuncia = checkedListBox1.SelectedItem.ToString();
                Conexao con = new Conexao();

                try
                {
                    con.Conectar();
                    string sql;
                    string Date = DateTime.Now.ToShortDateString();




                    sql = "INSERT INTO OCORRENCIA(NOME_CRIANCA, IDADE, SERIE, DATA_HORA, NOME_ESCOLA, TIPO_OCORRENCIA)" +
                        "VALUES ('" + FormDenuncia.NomeCriança + "', '" + FormDenuncia.IdadeEscolhida.ToString() + "', '" + FormDenuncia.SerieEscolhida + "', '" + Date + "', +'" + FormDenuncia.EscolaEscolhida + "', '" + FormTipoDenuncia.TipoDenuncia.ToString() + "' )";


                    SQLiteCommand comando = new SQLiteCommand(sql, con.conn);
                    comando.ExecuteNonQuery();



                    //MessageBox.Show("Denuncia  efetuado com sucesso!", "Registro Salvo!", MessageBoxButtons.OK, MessageBoxIcon.Information);




                }

                catch (Exception E)
                {
                    MessageBox.Show(E.Message.ToString(), "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                switch (comboBox_numd.SelectedItem)
                {
                    case "0":
                        {
                            MessageBox.Show("Sua denuncia foi efetuada com sucesso, o encaminhamento foi feito para o Conselho Tutelar. Seu anomito será garantido!");
                            break;
                        }
                    case "1":
                        {
                            MessageBox.Show("Sua denuncia foi efetuada com sucesso, o encaminhamento foi feito para o CMDCA. Seu anomito será garantido!");
                            break;
                        }
                    case "2 ou mais":
                        {
                            MessageBox.Show("Sua denuncia foi efetuada com sucesso, o encaminhamento foi feito para o Ministério Público. Seu anomito será garantido!");
                            break;
                        }
                    default:
                        {
                            MessageBox.Show("Sua denuncia foi efetuada com sucesso, o encaminhamento foi feito para o Conselho Tutelar. Seu anomito será garantido!");
                            break;
                        }


                }
                checkedListBox1.ClearSelected(); 
            }

            
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }


    }

}





