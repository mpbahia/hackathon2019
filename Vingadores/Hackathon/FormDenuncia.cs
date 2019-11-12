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
    public partial class FormDenuncia : Form
    {
        public static string NomeCriança;
        public static string EscolaEscolhida;
        public static string IdadeEscolhida;
        public static string SerieEscolhida; 


        public FormDenuncia()
        {
            InitializeComponent();
            AddEscolas();
            AddIdade();
            AddSerie();


        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void FormDenuncia_Load(object sender, EventArgs e)
        {

        }

        public void AddEscolas()
        {
            switch (FormLocalizacao.bairroEscolhido)
            {
                case "Ponte Grande":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL DE CAPIARARA".ToString());
                        comboEscola.Items.Add("ESCOLA MUNICIPAL CAPITULINO DOS SANTOS".ToString());
                        break;
                    }
                  


                case "Ciamar":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL ANA LÚCIA MAGALHÃES".ToString());
                        comboEscola.Items.Add("ESCOLA MUNICIPAL JOSÉ DOS SANTOS PARANHOS".ToString());
                        break;
                    }
                    
                    
                case "Itinga":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL 2 DE JULHO");
                        comboEscola.Items.Add("ESCOLA MUNICIPAL SOLANGE COELHO");
                        break;
                    }

                case "Centro":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL ENOQUE AMARAL");
                        comboEscola.Items.Add("ESCOLA MUNICIPAL ANA LÚCIA MAGALHÃES");
                        break;
                    }
                case "Jardim Independência":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL VIDA NOVA");
                        comboEscola.Items.Add("ESCOLA MUNICIPAL INFÂNCIA FELIZ");
                        break;
                    }

                case "Vida Nova":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL MENINO DAVI");
                        comboEscola.Items.Add("ESCOLA MUNICIPAL PATO DONALD");
                        break; 
                    }
                case "Itapuã":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL FENIX");
                        comboEscola.Items.Add("ESCOLA MUNICIPAL FELIX CARDOSO");
                        break;
                    }
                case "Barra":
                    {
                        comboEscola.Items.Add("ESCOLA MUNICIPAL NOSSA SENHORA");
                        comboEscola.Items.Add("ESCOLA MUNICIPAL PAULO FREIRE");
                        break; 
                    }

            }
        }

        private void button1_Click(object sender, EventArgs e) //Tratar como ver se o TextBox ta null
        {

            if (comboEscola.SelectedItem == null || comboBoxIdade.SelectedItem == null || comboBoxSerie.SelectedItem == null || textNome.Text == "" ) //Trata para todos os dados serem preenchidos
            {
                MessageBox.Show("Por favor, preencha todas as informações solicitadas."); 

            }
            else
            {
                NomeCriança = textNome.Text;
                EscolaEscolhida = comboEscola.SelectedItem.ToString();
                IdadeEscolhida= comboBoxIdade.SelectedItem.ToString();
                SerieEscolhida = comboBoxSerie.SelectedItem.ToString();

                this.Hide();
                FormTipoDenuncia FTD = new FormTipoDenuncia();
                FTD.Show(); 
            }
}

            private void comboSerie_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

            public void AddSerie()
            {
                comboBoxSerie.Items.Add("Creche");
                comboBoxSerie.Items.Add("Educação Infantil");
                comboBoxSerie.Items.Add("1º ano");
                comboBoxSerie.Items.Add("2º ano");
                comboBoxSerie.Items.Add("3º ano");
                comboBoxSerie.Items.Add("4º ano");
                comboBoxSerie.Items.Add("5º ano");
                comboBoxSerie.Items.Add("6º ano");
                comboBoxSerie.Items.Add("7º ano");
                comboBoxSerie.Items.Add("8º ano");
                comboBoxSerie.Items.Add("9º ano");
                comboBoxSerie.Items.Add("1° ano do Ensino Médio");
                comboBoxSerie.Items.Add("2° ano do Ensino Médio");
                comboBoxSerie.Items.Add("3° ano do Ensino Médio");

            }


            public void AddIdade()
            {
                comboBoxIdade.Items.Add("0 à 9 meses");
                comboBoxIdade.Items.Add("1 ano");
                comboBoxIdade.Items.Add("2 anos");
                comboBoxIdade.Items.Add("3 anos");
                comboBoxIdade.Items.Add("4 anos");
                comboBoxIdade.Items.Add("5 anos");
                comboBoxIdade.Items.Add("6 anos");
                comboBoxIdade.Items.Add("7 anos");
                comboBoxIdade.Items.Add("8 anos");
                comboBoxIdade.Items.Add("9 anos");
                comboBoxIdade.Items.Add("10 anos");
                comboBoxIdade.Items.Add("11 anos");
                comboBoxIdade.Items.Add("12 anos");
                comboBoxIdade.Items.Add("13 anos");
                comboBoxIdade.Items.Add("14 anos");
                comboBoxIdade.Items.Add("15 anos");
                comboBoxIdade.Items.Add("16 anos");
                comboBoxIdade.Items.Add("17 anos");
            }

            private void FormDenuncia_Load_1(object sender, EventArgs e)
            {

            }
        }

    }

