using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pruebaTryCLOTHES001
{
    public partial class Form1Inicio : Form
    {
        public Form1Inicio()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Form2Genero form2Genero = new Form2Genero();
            form2Genero.Show();
            this.Hide();
        }
    }
}
