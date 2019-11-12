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
    public partial class FormLocalizacao : Form
    {
        public static string estadoChoose;
        public static string MunicipioEscolhido; 
        public static string bairroEscolhido; 
        public FormLocalizacao()
        {
            InitializeComponent();
            comboEstado.Items.Add("Bahia");


        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }


        private void btAvancar_Click(object sender, EventArgs e)
        {
            if(comboEstado.SelectedItem == null || comboMunicipio.SelectedItem == null || comboBairro.SelectedItem == null)
            {
                MessageBox.Show("Por favor, preencha todas as informações solicitadas");
            }
            else
            {
                
                this.Hide();
                FormDenuncia FD = new FormDenuncia();
                FD.Show(); 
            }

        }

        private void comboEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            estadoChoose = comboEstado.SelectedItem.ToString();
            AddMunicipio(); 
            

        }

        public void AddMunicipio()
        {
            if (comboBairro.Items != null)
            {
                comboMunicipio.Items.Clear();
            }

            switch (estadoChoose)
            {
                case "Bahia":
                    {
                        comboMunicipio.Items.Add("Simões Filho");
                        comboMunicipio.Items.Add("Lauro de Freitas");
                        comboMunicipio.Items.Add("Feira de Santana");
                        comboMunicipio.Items.Add("Salvador");
                        break; 
                    }
            }
        }

        public void AddBairro()
        {
            if (comboBairro.Items != null) //Limpar Combo Box
            {
                comboBairro.Items.Clear();
            }
            switch (MunicipioEscolhido)
            {
                case "Simões Filho":
                    {
                        comboBairro.Items.Add("Ponte Grande");
                        comboBairro.Items.Add("Ciamar");
                        break;
                    }
                case "Lauro de Freitas":
                    {
                        comboBairro.Items.Add("Itinga");
                        comboBairro.Items.Add("Centro");
                        break; 
                    }
                case "Feira de Santana":
                    {
                        comboBairro.Items.Add("Jardim Independência");
                        comboBairro.Items.Add("Vida Nova");
                        break;
                    }
                case "Salvador":
                    {
                        comboBairro.Items.Add("Itapuã");
                        comboBairro.Items.Add("Barra");
                        break; 
                    }
                    
            }
        }

        public void AddEscola()
        {

        }

        private void comboMunicipio_SelectedIndexChanged(object sender, EventArgs e)
        {
            MunicipioEscolhido = comboMunicipio.SelectedItem.ToString();
            AddBairro(); 
        }

        private void comboBairro_SelectedIndexChanged(object sender, EventArgs e)
        {
            bairroEscolhido = comboBairro.SelectedItem.ToString();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
