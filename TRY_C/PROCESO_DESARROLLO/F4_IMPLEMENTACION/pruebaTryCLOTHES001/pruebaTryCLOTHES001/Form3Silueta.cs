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
    public partial class Form3Silueta : Form
    {
        public Form3Silueta()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Form4Bienvenida form4Bienvenida = new Form4Bienvenida();
            form4Bienvenida.Show();
            this.Hide();
        }
    }
}
